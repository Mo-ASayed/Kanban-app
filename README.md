<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kanban App on Kubernetes with Terraform and ArgoCD</title>
</head>
<body>

<h1>Kanban App on Kubernetes with Terraform and ArgoCD</h1>

<p>Welcome to my <strong>Kanban Board App</strong> repository! 🎉</p>

<p>This app is a simple, yet powerful tool that helps you organise and manage tasks using the <strong>Kanban method</strong>. It's designed to keep everything you need in one place, track progress, and improve productivity – all hosted on a robust <strong>Kubernetes</strong> infrastructure. Think of it as your own digital task board, similar to what you'd see in tools like Trello!</p>

<hr>

<h2>🌟 What is a Kanban Board?</h2>

<p>If you're not familiar, a <strong>Kanban board</strong> is a visual tool to manage workflows efficiently. It's great for keeping track of tasks, especially when you have to juggle a lot of different things at once. Tasks are represented as cards and can be dragged across columns (e.g., "To Do", "In Progress", "Done") to show where they are in the workflow.</p>

<hr>

<h2>📋 About the Project</h2>

<p>This project goes beyond just being a simple Kanban app. It showcases how you can host and manage an application at scale using <strong>AWS</strong>, <strong>Kubernetes (EKS)</strong>, <strong>Terraform</strong>, and <strong>ArgoCD</strong>.</p>

<h3>Key Technologies Used:</h3>
<ul>
    <li><strong>Kubernetes (EKS)</strong>: Your tasks need a safe place to live! The app runs in a scalable environment within AWS’s Elastic Kubernetes Service.</li>
    <li><strong>Terraform</strong>: Infrastructure as Code (IaC) – because no one wants to click through dashboards endlessly. I’ve used Terraform to automate the setup of everything from VPCs, subnets, and load balancers to EKS clusters and security groups.</li>
    <li><strong>ArgoCD</strong>: GitOps for Kubernetes. This manages the continuous delivery of the application. All you need to do is push your changes to GitHub, and ArgoCD will handle the rest!</li>
</ul>

<hr>

<h2>🏗️ High-Level Overview</h2>

<p>Here’s a quick breakdown of how everything fits together:</p>

<ol>
    <li><strong>Cloudflare</strong> handles DNS for the domain.</li>
    <li><strong>Route 53</strong> routes traffic from Cloudflare to the <strong>Kubernetes ingress</strong>.</li>
    <li>The application runs within an <strong>EKS cluster</strong> on <strong>AWS</strong>, which I’ve set up using <strong>Terraform</strong>.</li>
    <li>Continuous delivery is managed via <strong>ArgoCD</strong>, syncing changes automatically from the GitHub repo into the EKS cluster.</li>
    <li><strong>ALB Ingress Controller</strong> manages the load balancing for the application, ensuring that traffic gets routed efficiently.</li>
</ol>

<p>This project covers everything from automating infrastructure to deploying and managing the app – so it’s a great example of how these tools work together!</p>

<hr>

<h2>🚀 Features</h2>

<ul>
    <li><strong>Task Management</strong>: Create, move, and delete tasks in various states like To-Do, In-Progress, and Done.</li>
    <li><strong>Scalable Infrastructure</strong>: The app is deployed on an autoscaling EKS cluster.</li>
    <li><strong>GitOps</strong>: Manage the entire deployment via Git using ArgoCD, ensuring smooth updates and rollbacks.</li>
    <li><strong>Infrastructure as Code</strong>: Everything is codified using Terraform, making it easy to replicate the setup or modify it in the future.</li>
</ul>

<hr>

<h2>🎯 What Was Learned</h2>
<ul>
    <li>How to use <strong>Terraform</strong> to set up cloud infrastructure (VPCs, subnets, EKS, etc.).</li>
    <li>Running a <strong>Kubernetes</strong> application on AWS and managing it at scale.</li>
    <li>Handling networking with <strong>Application Load Balancer (ALB)</strong> in Kubernetes.</li>
    <li>Working with DNS management via <strong>Cloudflare</strong> and <strong>Route 53</strong>.</li>
    <li>Managing Kubernetes resources using <code>kubectl</code>.</li>
</ul>

<hr>

<h2>🤝 Contributing</h2>
<p>Feel free to contribute! This project is meant to be a learning experience and is open for improvements. Fork the repo and make a PR if you want to add something cool!</p>

</body>
</html>
