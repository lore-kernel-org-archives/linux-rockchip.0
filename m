Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A4D9CA1012
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Sep 2025 10:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+WASMf3b3BwICQXB9yQ4l62OCCjL+2NhZPoTX446iA=; b=YvPyDMkBiXWjjq
	f1VSv1wj7VHlXwcXN1/MeWtXkBqN7VYB26Jj3sASvW3GfPCICgHPQ3gRpnZlIt7a/d5cmTTZ/bvW0
	7th5b7SukwT2Xc1O7q7FD1a2fvEaoarb9TWol20Eo9mhe+sv1ZwXYbCFvSRwMuMGonQ6TZwQcazlF
	qV8wn1rrJAfDbp4V11WHgsl+5Iw/kBejX6FTLKkTn4anCu4W4MMrUp3nAhxwvnVRyknr+Sm7tM6Bt
	+YB9AHEg6kgNdF5aaeE3cJ68uKAr13lJfSg6YXVVKjL2zPrYFMPDGkAylgO2y8dRUgjo7JRHNRvjS
	by4a3UkB/4xTDYNfViLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu7Ck-0000000AtY3-3Vda;
	Thu, 04 Sep 2025 10:28:34 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu665-0000000AVPo-3jrn
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Sep 2025 09:17:39 +0000
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-e94d678e116so909033276.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Sep 2025 02:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756977457; x=1757582257; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1IHfxiKHVZcoZdK5eedXi9AzrICaFJavMXaL5eOAwNU=;
        b=wbS7T8oY47A2n7gv6qMJPOSQJDOws+hePzhLZQzRhyLmrkVNEAMjInOYdF2c40bEWe
         30wNHJdYNsLYVMX8uLUDIdeF6qpVRNVO60nfaJAEqwfmRRGp1x271NI+tytQ01ZcgvLi
         FiNjV7s3bw1QRqPKWYU52ev5Iza3oDoKuPTxRJtB/SRSvFUaDekMeYa5SZcad269HYhA
         RLTB9n5bmj6joDN0yAHpKqYva/JCtq55QhcWVzyqYsdOGcfMrfcpK8ssSENR4k+RcQea
         9DuZbYc0X/fPjMsvwLCwlO+5LwCbJ3OJXUKqsQqBRIDBgZX7xnS0bWExt+lYTxl0A0wi
         j1Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756977457; x=1757582257;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1IHfxiKHVZcoZdK5eedXi9AzrICaFJavMXaL5eOAwNU=;
        b=e6m8OaTYclhBLI6HRD6xn7B4DaJ/0Y51uEhsHZqQ0XhEhNC0WxLEVYZGt9PTrFfoJ3
         mQpFbIB8R/03VFdVUGzR0tTPJoawnlGmGQchxQVIWX+lDjlFsGuFXW/Z/sw5yHZu1k3B
         yuT1sXnKgfN6XcoHBZGWCGCyz5XYQJnYaAr3g9w1jrYYFVLG5SpOfldySPad0hKV8WP+
         CvObK0WrgikAgPQ/drL8w/kQ+qI7P+X/sN0xEHLofsPUMib/W2sVQKJBVp8P6m9ROwDu
         5bE2wmpEcGxqGjeEd47c8AjNJJzVDIDjHQS7aMvRGVFjryvPE9VAxrR9ElTex1TFGhGo
         0O1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXiwg82YcFiVpDbNl5qX9Oubf0W+jNjKWuya7SGzxUsrCMuIbJvwotsDcF2uzgXKob3p76N4l0st7LUcKFFNQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwmbdhxeDDcaOsgiHjb73NOLvsZlvI41ZPqrId5VbKvvQpgPShC
	/7WmMt4eiYZZ3JU8BiwJPknY4FOT74IAlWSs56TwVQjNy3m32+n90fijIyBG8N2WN4V86Cp65mv
	qkLKzYrFNnfrpB7i8BzuDm+Rwx+IRRLrX12RnGx0c9Q==
X-Gm-Gg: ASbGncvLXKEvnE4zh614CkfcV4jCZOdtJmHWQPOk4R903brl/EKbIL6ntVLolg6QXBJ
	F5QmhrHIh2FCaukSVO8oX9YFXJXYvsu9OxCWT/xeBT7jxHdmNdYHcpt78ANUfi4U13Dv8bBD6YS
	ceaFoeaKucNbUikAGFfYk8pdCFSCbx+KVvRlei2vliCjMWYGj4A8dZUNd54zhx7Kw3NkjBvj/xE
	FRykuk2q/Lf9k/UFb0=
X-Google-Smtp-Source: AGHT+IHGzvL/SQ4HNYcJs3mSRbi/fwWJTLuJdCzWDRJrAdeSCUtGtaE9Ng6+Zgj8ZTj4BVLlXa5f1EsvUEu7/+8+iK0=
X-Received: by 2002:a53:d008:0:b0:5f3:317e:2e99 with SMTP id
 956f58d0204a3-601755b5082mr2503853d50.3.1756977456767; Thu, 04 Sep 2025
 02:17:36 -0700 (PDT)
MIME-Version: 1.0
References: <20250902-rk3576-lockup-regression-v1-1-c4a0c9daeb00@collabora.com>
In-Reply-To: <20250902-rk3576-lockup-regression-v1-1-c4a0c9daeb00@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 4 Sep 2025 11:17:01 +0200
X-Gm-Features: Ac12FXx39o4QIBpnfGjfT6nAmrw_ZkxKlyHGgS7cjK0YW1lPPw2TRrRJgZBu_s8
Message-ID: <CAPDyKFpAOLiBOoAhv+GQcobU_g_AWrB9iyOGmodROLtRmR30JA@mail.gmail.com>
Subject: Re: [PATCH] pmdomian: core: don't unset stay_on during sync_state
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_021737_936189_C95F835B 
X-CRM114-Status: GOOD (  22.88  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 2 Sept 2025 at 20:23, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> This reverts commit de141a9aa52d6b2fbeb63f98975c2c72276f0878.

I can't find this commit hash. What tree are you using when testing this?

Are you trying to revert 0e789b491ba04c31de5c71249487593e386baa67 ?

>
> On RK3576, the UFS controller's power domain has a quirk that requires
> it to stay enabled, infrastricture for which was added in Commit
> cd3fa304ba5c ("pmdomain: core: Introduce dev_pm_genpd_rpm_always_on()").
>
> Unfortunately, Commit de141a9aa52d ("pmdomain: core: Leave powered-on
> genpds on until sync_state") appears to break this quirk wholesale. The
> result is that RK3576 devices with the UFS controller enabled but unused
> will freeze once pmdomain shuts off unused domains.
>
> Revert it until a better fix can be found.

This sounds a bit vague to me, can you please clarify and elaborate a
bit more so I can try to help.

What does "UFS controller enabled but unused" actually mean? Has the
UFS controller driver been probed successfully and thus its
corresponding device been attached to its PM domain?

Moreover, the behaviour of dev_pm_genpd_rpm_always_on() is orthogonal
to what 0e789b491ba0 ("pmdomain: core: Leave powered-on genpds on
until sync_state") brings along with its corresponding sync_state
series for genpd [1]. Again, more information is needed to understand
what goes wrong.

Kind regards
Uffe

[1]
https://lore.kernel.org/all/20250701114733.636510-1-ulf.hansson@linaro.org/

>
> Fixes: de141a9aa52d ("pmdomain: core: Leave powered-on genpds on until sync_state")
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/pmdomain/core.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/pmdomain/core.c b/drivers/pmdomain/core.c
> index 0006ab3d078972cc72a6dd22a2144fb31443e3da..4eba30c7c2fabcb250444fee27d7554473a4d0c2 100644
> --- a/drivers/pmdomain/core.c
> +++ b/drivers/pmdomain/core.c
> @@ -1357,7 +1357,6 @@ static int genpd_runtime_resume(struct device *dev)
>         return ret;
>  }
>
> -#ifndef CONFIG_PM_GENERIC_DOMAINS_OF
>  static bool pd_ignore_unused;
>  static int __init pd_ignore_unused_setup(char *__unused)
>  {
> @@ -1393,7 +1392,6 @@ static int __init genpd_power_off_unused(void)
>         return 0;
>  }
>  late_initcall_sync(genpd_power_off_unused);
> -#endif
>
>  #ifdef CONFIG_PM_SLEEP
>
> @@ -3494,7 +3492,6 @@ void of_genpd_sync_state(struct device_node *np)
>         list_for_each_entry(genpd, &gpd_list, gpd_list_node) {
>                 if (genpd->provider == of_fwnode_handle(np)) {
>                         genpd_lock(genpd);
> -                       genpd->stay_on = false;
>                         genpd_power_off(genpd, false, 0);
>                         genpd_unlock(genpd);
>                 }
> @@ -3522,7 +3519,6 @@ static void genpd_provider_sync_state(struct device *dev)
>
>         case GENPD_SYNC_STATE_SIMPLE:
>                 genpd_lock(genpd);
> -               genpd->stay_on = false;
>                 genpd_power_off(genpd, false, 0);
>                 genpd_unlock(genpd);
>                 break;
>
> ---
> base-commit: 5cc61f86dff464a63b6a6e4758f26557fda4d494
> change-id: 20250902-rk3576-lockup-regression-5b1f1fb7ff21
>
> Best regards,
> --
> Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
