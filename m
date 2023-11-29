Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51E14C46CA3
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 13:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orT6hhx3EwjBsWA8UqHmqR0NkaqrzN+pstsAXdFTQSA=; b=iOoVoVx/08pbYZ
	vJgcyIzjURem8cXMH+fEBjk6EUaYWvUPQh3KGwdDPTUfxq3XKl2nVnPzHjn3xI0oYRlzuq5557npq
	GE8G5wRjYbG4SiJlnd5xwnFFUFEY8ZDGxC5tZfz+przQ62iy2E5lPfJihNo3gc05qRO/VKBJtyndM
	f5yRbQjsKqOiKZUavA93UgqqOZ8Br90lzMox2Q+EjlNfAPrQTBQwwGDMbC6GXqS2Ty9skMstyjOe2
	wczCj2yMZXFTuY8cmrP2ITEYEr29RJ5FwPdlyIBE1DZrH5jmm0VzyLy0G3KPbAorkaRN3QzqG83wB
	8papvNmamd/njEP5XFdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8KWZ-008RfZ-2r;
	Wed, 29 Nov 2023 13:22:43 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8KWV-008ReK-2t
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 13:22:41 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a02cc476581so912998066b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Nov 2023 05:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1701264156; x=1701868956; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/VP3ii8qzlwzBFXOUvCIlM2ChKhNv0Z2flI0ZUJ06go=;
        b=wk8/SgcBPL1jIFhShI+VUJOp+S4axf7BEf7UQjI09ENDPWatuGx6x7leS5CWggPWtp
         X8TH9oJKfYTukybHK8iTwvmMyWrmoheh5p/rXehnLRpSkMEXdSvs8KngTV5HCYOyFBMX
         J1iRN01y0TOilL4mkKDGi5tD5+NUb5Y7Gqx07e7ZFm8xPyB7iT3nND6oqjHyVqF0VXh5
         Z5PyrWxnzbwrD0dvD+v+fCWTBZyaGV2WNZ+jFRjDWEPB1dP3R0qTU+tX1VptXO/2e16n
         BpcDKhboe2x/6Wjfn8FqMQACIdw4n8RGrFEI46mOjH0hDNyXJo+IpsaoDrH9h2ONWdr4
         Iazg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701264156; x=1701868956;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/VP3ii8qzlwzBFXOUvCIlM2ChKhNv0Z2flI0ZUJ06go=;
        b=bo7Oiriu8sUmk/hcphQoyzFpCuik0MkWjmhjHnRCLvk0BMJXg2YFctxrFlTV1slv38
         dL/vF7UCtmWAG8fAMAsQmcAH1YItEU7W+o+tquDI6NDGIUfCoJenE4iua16Ba6VQZan6
         FQafeUznhKUN+WeFjMXkGM3zKHjZuaau78TjM1Z3pmT1X87g4xuq5UquCLp4+sD1GyLg
         dxMW5LRlBx4/BjmF+BPBAiDJEVxXDiJtfT27u43/kPoPXNq7iAdcn8Znm3FwZAr/kXEq
         o6K0WTnrq7w0inLv4wauWcVujGDvfi3AH7PTEe7qck+TdbKN0wBve8Uc8Drw65QxbH+L
         nkqA==
X-Gm-Message-State: AOJu0Yzh4rBXy9zNoxtY6FZIkTWfnUQML99vmnfpMIFLQGuyoU0dcTCK
	dBU9hvS2/0p8+RVHQCeQ/9ClojqGItxb/AdFTAPkhA==
X-Google-Smtp-Source: AGHT+IESfQEmd7uikH5eYlpIkIXnzdfz7yOnSZr9KANdmLWdgeBrFVefxKHw37NvqQrsvZJsay74wE6WyTTIfjyDBNw=
X-Received: by 2002:a17:906:3f88:b0:a02:a2cc:66b8 with SMTP id
 b8-20020a1709063f8800b00a02a2cc66b8mr11788067ejj.14.1701264156218; Wed, 29
 Nov 2023 05:22:36 -0800 (PST)
MIME-Version: 1.0
References: <20231129121841.253223-1-vignesh.raman@collabora.com> <20231129121841.253223-7-vignesh.raman@collabora.com>
In-Reply-To: <20231129121841.253223-7-vignesh.raman@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 29 Nov 2023 13:22:24 +0000
Message-ID: <CAPj87rPKywWa8KxTCeJQz4vvgTwhPzL+y4aCX9zxZDkkfrvsoQ@mail.gmail.com>
Subject: Re: [PATCH v6 06/10] drm: ci: mediatek: Set IGT_FORCE_DRIVER for mt8173
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, 
	daniels@collabora.com, emma@anholt.net, gustavo.padovan@collabora.com, 
	linux-arm-msm@vger.kernel.org, guilherme.gallo@collabora.com, 
	sergi.blanch.torne@collabora.com, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org, 
	david.heidelberg@collabora.com, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_052240_366126_CE58451E 
X-CRM114-Status: UNSURE (   8.62  )
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

Hi Vignesh,

On Wed, 29 Nov 2023 at 12:19, Vignesh Raman <vignesh.raman@collabora.com> wrote:
> Expected driver for mt8173 is "mediatek" and for mt8183
> it is "panfrost". Set IGT_FORCE_DRIVER to 'mediatek' as
> the expected driver for mt8173.

Actually, for mt8183 it's both. And for mt8173 it will probably be
mediatek+pvr pretty soon. Each of these SoCs (like most Arm devices)
have a separate display controller and GPU, with different drivers for
each. They'll run different tests with different xfails. So we should
figure out a way to support igt running for both devices on the one
system.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
