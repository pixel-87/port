import { defineCollection, z } from 'astro:content';

const portfolioCollection = defineCollection({
    type: 'content',
    schema: z.object({
        title: z.string(),
        description: z.string(),
        gradient: z.enum(['primary', 'secondary', 'accent']).optional().default('primary'),
        date: z.date(),
        tags: z.array(z.string()).optional(),
    }),
});

export const collections = {
    portfolio: portfolioCollection,
};
