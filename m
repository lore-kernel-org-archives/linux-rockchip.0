Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A4C5CCD18E
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 12:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCPlhVLkt4mlO72PV2llOOglCVU8BsL9NHCVfhQKzH8=; b=mi+G9n+KvJUDH7
	iL0VTqRjEswtVU/gVATYcFB0tq1C3sp0MdqcjOcd2rdM5azKJ486NiJzKchWMXAXICxz1TqtDLiye
	SG98ygnRrsy+oGoqWQeNM3tTG5kYfcsUzOHwKFDgAi240AtMda7T0Vvq4UgyRwrcyJZYbYgAzxwbp
	xAxhlQyaLQiaUu5uKeU9pZPC+znMUjj/JY6UsaS7l1MOkLAO0eGF5LdgqtLVCt84LzBA5nzgSvmmU
	1up0u2PAiTpXE1uXX2QFJrwBnTgbTzJ2q99IVAqAZXv7EbeiqmkmWocg/C/ho8UKm1xEpYPI7ZZTj
	9Hh8wfzvExFKEmG+CssA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v90Ej-00000001Uq6-2Nqr;
	Wed, 15 Oct 2025 12:04:09 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v90Eh-00000001Uol-06Yb
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Oct 2025 12:04:08 +0000
Received: by mail-qk1-x72c.google.com with SMTP id af79cd13be357-88e371e3cbfso95176185a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Oct 2025 05:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1760529845; x=1761134645; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X3tSr4HAvbS0zz40z1XcCEFjgrGlF3qXMnfs2AVWb3Y=;
        b=CmjKMQQxalohCKa19hLFu05BC9gR+hUoogekzbPk7zzbE8jt66LezCjoG3TrRXUsLN
         ronbv0i6EzQJ7PK2Tq77C0/5Wg2JBdJSZ+hZW0rrwTKjUBKfGyCnOrZmdwAwU1ZdUp7n
         uke1f+XNu/cnzvzU2uvNoytYO0HGU4iLzDFLcr098OUnmcNwJgVKf+ZUrV7YObTwBlEW
         jNDSRvVZX2/ArVk9KNUtUOZkvoJkzjw6dlwykynPX373YLH47WuVt79qDJMFkI9nUZjw
         p0Voo3xKPCLjvAx3YVvk7WRVm1mO1v67l9HDuROG6boD11oyJx4E28WCvDqEald9NFgF
         7hzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760529845; x=1761134645;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X3tSr4HAvbS0zz40z1XcCEFjgrGlF3qXMnfs2AVWb3Y=;
        b=I+7NF8z2zR89Q41OC70iXE4AWSuIAqBdCZbXWM8+fvPOkMYly4POJHMomPqK5Rv1un
         rfnq3WWf8/JEud3dZtYSQBA76xfTPOpn2hOFcxYvQR3K7aTRWv4osF50oEIKk8o9svyd
         AkxMSD0pXGpvoiLrtBrNsu+IL8CWh/5RcajRl1z1hxRa7wPCtnctrNpl2HOV1256fTR+
         Ru70vP8dQdFTP8dGlJbpRnbbd+MUUPq1gfhm6v7iOP8+OV3mYusxnIR6RG3HXYtS5v1m
         k3KTEdmGo3h4MLx8nz0HG+xFgCANmv3g19x2HMhCVCh+VOzlxb6r8GyXQTwjl11dgo8p
         oVbA==
X-Forwarded-Encrypted: i=1; AJvYcCVYkRDAHem5rNN1pmYYHRT/QK9dN85C6d2YhK8Zt27YwIF7puDQe8dYx7qo/dJVRDS4HvQHnEkNFcCvCW6UgA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyhIGOqqn22+MOYe2G3Aap5wbIPayi5jq51zF3GxsZsQOJ8+572
	yTa7j6ER41Vqne0jg1UHdNo1U/raNyYsUl+cB6oENXKr+dPLrVFV3khhDOKO01SviQYbPro6uTC
	PgCx9eJrQU7MQViZsPC1LofWNW34ZlfwzkW5q2SkKaA==
X-Gm-Gg: ASbGncsferkHHWWObSA/Yq+ImA9wm1qeYuPuPqUC5DSvav6cT6i5JmIiwK9jZX2K0nD
	yy73dDwAtkpthUiXnENXlOiZrxhEQGgbCqx/lOP7GdQ93lk3l9ewyRzGVaYEcvhoJKzL4Xv7EIf
	Ze9SgoDSYc3+wCaMw5bjetLmytUhqYqjs1m5s9eFBWRCOWzl7J5QFP0StuGbyNTFGY3IRZyYPEe
	TOZV98clq2BB7X0ZTcMyQFsUHUbYlNccA==
X-Google-Smtp-Source: AGHT+IHqCTndsaW9mNNOpEoxqpK+g671TVftkJwHJncfJRnISWrovh6jkW0GrLsJk4LzlYEdY/SfnIetRnQxqll+9N8=
X-Received: by 2002:a05:620a:d89:b0:859:7e5d:efb0 with SMTP id
 af79cd13be357-883521dbdb5mr3978297485a.43.1760529845105; Wed, 15 Oct 2025
 05:04:05 -0700 (PDT)
MIME-Version: 1.0
References: <20250718105407.32878-1-vignesh.raman@collabora.com>
In-Reply-To: <20250718105407.32878-1-vignesh.raman@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 15 Oct 2025 13:03:53 +0100
X-Gm-Features: AS18NWCXawAF8rrUemNB4cY6pOyINS36FA1C_QZssu58BBI9i4GnKsHpaQ9lquo
Message-ID: <CAPj87rMRKdm4BvfD8gMmSF3jjeMK4nurzTKPOFY15V0tBr4pyw@mail.gmail.com>
Subject: Re: [PATCH v1 0/7] drm/ci: add new jobs, uprev IGT and mesa
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch, 
	robdclark@gmail.com, guilherme.gallo@collabora.com, 
	sergi.blanch.torne@collabora.com, valentine.burley@collabora.com, 
	lumag@kernel.org, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
	intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_050407_086906_1921CF21 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi VIgnesh,

On Fri, 18 Jul 2025 at 11:54, Vignesh Raman <vignesh.raman@collabora.com> wrote:
> This series introduces new jobs to drm-ci for testing the following
> devices:
> - rk3588-rock-5b
> - mt8192-asurada-spherion-r0
>
> Other updates include:
> - Uprev IGT and updating test expectations accordingly.
> - Adapting to recent changes in Mesa CI, such as:
>    - LAVA overlay-based firmware handling
>    - Container/job rule separation
>    - Removal of the python-artifacts job
>    - Use of the Alpine container for LAVA jobs
>    - Various other CI improvements
> - Disabling bare-metal jobs for apq8016 and apq8096, as these devices
>   are being migrated to LAVA.
> - Updating the runner tag for i915: cml (switching from hatch to puff)
>   to improve device availability.
> - Adjusting parallelism in jobs (sm8350-hdk, amly) to better utilize
>   test resources.

Series is:
Reviewed-by: Daniel Stone <daniels@collabora.com>

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
