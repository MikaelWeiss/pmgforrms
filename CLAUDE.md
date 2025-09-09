# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a marketing website for "Strive Planner" - an iOS app designed for intentional living, particularly targeting returned missionaries. The site is built with SvelteKit and Tailwind CSS, featuring a modern, responsive design that showcases the app's features and benefits.

## Development Commands

### Core Development
- `npm run dev` - Start development server
- `npm run build` - Create production build
- `npm run preview` - Preview production build

### Code Quality
- `npm run check` - Run TypeScript type checking
- `npm run check:watch` - Run TypeScript type checking in watch mode
- `npm run lint` - Run ESLint and Prettier checks
- `npm run format` - Format code with Prettier

### Setup
- `npm install` - Install dependencies
- `npm run prepare` - Sync SvelteKit files

## Architecture

### SvelteKit Structure
- **File-based routing**: Pages are in `src/routes/` with `+page.svelte` files
- **Layout system**: `src/routes/+layout.svelte` provides the main layout structure
- **Components**: Reusable components in `src/lib/components/`
- **Static assets**: In `static/` directory

### Key Components
- **Header** (`src/lib/components/Header.svelte`): Navigation with app download CTA
- **Footer** (`src/lib/components/Footer.svelte`): Comprehensive footer with links and company info
- **Layout** (`src/routes/+layout.svelte`): Main layout wrapper with global styles

### Styling
- **Tailwind CSS** with custom configuration
- **Tailwind Forms** plugin for form styling
- **Tailwind Typography** plugin for content styling
- Global styles in `src/app.css`

### TypeScript Configuration
- Strict TypeScript enabled
- Module resolution set to "bundler"
- SvelteKit auto-generated base configuration extended

## Content Structure

### Main Pages
- **Home** (`/`): Landing page with hero section and feature highlights
- **Features** (`/features`): App capabilities and functionality
- **For Whom** (`/for-whom`): Target audience information
- **About** (`/about`): Company and app background
- **Blog** (`/blog`): Articles and content
- **Download** (`/download`): App download instructions
- **FAQ** (`/faq`): Frequently asked questions
- **Testimonials** (`/testimonials`): User reviews and feedback

### Design System
- **Primary colors**: Blue gradient theme (`blue-600`, `blue-50` to `indigo-100`)
- **Typography**: Modern, clean with bold headings
- **Components**: Consistent button styles, card layouts, and spacing
- **Responsive**: Mobile-first design with breakpoints

## Build Process

### SvelteKit Configuration
- Uses `@sveltejs/adapter-auto` for automatic environment detection
- Vite preprocessing with Svelte plugin
- Standard SvelteKit file structure and conventions

### Deployment
- Production builds generated via `npm run build`
- Static site generation compatible with most hosting platforms
- Automatic adapter selection based on deployment environment

## Development Notes

### Code Style
- Use TypeScript for type safety
- Follow Svelte 5 syntax and conventions
- Maintain consistent Tailwind class ordering
- Keep components small and focused

### Testing
- Currently no test framework configured
- Type checking serves as primary code quality tool
- Manual testing via development server

### Performance
- Optimized builds with Vite
- Minimal JavaScript bundle size
- Efficient Tailwind CSS purging in production