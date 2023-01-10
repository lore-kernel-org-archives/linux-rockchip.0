Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF58EC54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 13:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0sCPUlFm2w2jC4NSsyTW3/sKe3BsU67Dlsvqs7FJM4=; b=0kTinwG2Mudkzj
	Fyc863Ypi4LxQKvfq2g2s3LR7kP1YQXuiaTy2NooCLj4uOVaPTh9l8H1zCMsjfXcY38VosYFe6fVe
	+2KaTWAgc/fDTUvus+6fmDNReMB9lh9hGoJXLgzNuj2USLyRZgWu21oY+2CHy3VjtUedan1oP1keo
	4YSWVE5qCWXivY9nS2Ki4SoJRMYbQhEjSKs18bu79eH78gbeSN+FtQsr1buft+tBdOKBM13BoBdcC
	NHkbCGm6/Gt07gyYQhhQ9N6c1894UJWAwL7wvSqUJE+xJCLmFF6ZuN+/fYciQissrbIJL6Nym5dhW
	5sr4nX38peUdsCg7kZFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFF0G-0077i1-1A; Tue, 10 Jan 2023 13:49:24 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFF0D-0077gB-L6
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 13:49:22 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-4d4303c9de6so3677307b3.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 05:49:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=44n3krIm8uSmD55/HyB5R1oD+31KNdGLUS6d9tW+5uQ=;
        b=vhotJ3I8QZ6o0V8YONaYaXj/HV/kecxNEMwtCEgE5GBsKWV9/ahydBnTXRAnAFB5vK
         8Bv6j4jmTFkIkqGKBBPhPgRL7BRLqCJOvxbslhuuqChHh8JOOx5pLG0chTHBkMvJPeKB
         qdOm+x5ISFro/dysaAH25bEr/7ioGKbFHDMGgXrqnyFn6KzeVadcw6Il64YiGxvXQFtN
         /aSz/JIfdGzF8RrcGELvdreEvNm0n2meScgUq5Qq+Tpw6xHF7XZMDlmFyKjWcdJua/0r
         2anEDx9JqN4Ia0rws2CoA8QRWKKpuHjh8Hi+8LKk54CBTcS0I0N50ZHMuD+mfOT77Gwg
         aFpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=44n3krIm8uSmD55/HyB5R1oD+31KNdGLUS6d9tW+5uQ=;
        b=sHj+38FXZk1UthSNmllejhGTfNpx/fnVOBXmhptqi/pLsi7CFm7Ih+iu2LoGY55ru3
         GAd2lfTyx2OjoXixMZFGwdPuP9PqNjwQo4OjvnafPGT8ilg+AjPIO7ZR/LXhEm6KcdMx
         iFg9fYFNnlu4PofO2m41TFbXxOTLENK9sObj2rYHpc/MJl7mbYWgXQAVLDB9OXl0XccI
         xnJDUUunPLkiFx9aWEJ55zAax34T/8jCd/0rzWYXSUo9RD8nXpExB8BrHzAX42HzbIlf
         AfAnCflNMCDu7tf7oRXZEho9ZskKRkKbGq3Wr/nWsOinGUR8Z2EhhKQBFjmk3qZhmIuP
         8Mbw==
X-Gm-Message-State: AFqh2kplNqmpziVFdsMn3MEUKq55kIvmAK/jslPLp/KoC23DbBWNBBKC
	hSNSSLjxrHM1xIMqkD3yUTO6ZxM6qgCZK7GyZwxB4g==
X-Google-Smtp-Source: AMrXdXuYkD+ZZc5pD3tPvLUfmyEi/NTU0zo9Lq4D2HDlk7f1MnD0p57cz4H1Pn//2A9HF6YPoEBmOrcORSltK9HAqs4=
X-Received: by 2002:a05:690c:442:b0:3e9:59f3:200c with SMTP id
 bj2-20020a05690c044200b003e959f3200cmr1105726ywb.171.1673358560103; Tue, 10
 Jan 2023 05:49:20 -0800 (PST)
MIME-Version: 1.0
References: <20230109155801.51642-1-sebastian.reichel@collabora.com> <20230109155801.51642-2-sebastian.reichel@collabora.com>
In-Reply-To: <20230109155801.51642-2-sebastian.reichel@collabora.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Tue, 10 Jan 2023 19:19:09 +0530
Message-ID: <CA+VMnFzJwrvdY4CguWyhKZwjBqdq6bfkZdjJjsh8SLu6BcN5XQ@mail.gmail.com>
Subject: Re: [PATCHv8 1/7] dt-bindings: soc: rockchip: add initial rk3588
 syscon compatibles
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier <maz@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Christopher Obbard <chris.obbard@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com, Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_054921_706447_BEF05918 
X-CRM114-Status: UNSURE (   6.33  )
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

On Mon, 9 Jan 2023 at 21:28, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Add IOC and PHP GRF syscon compatibles for RK3588.
>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

Reviewed-by: Jagan Teki <jagan@edgeble.ai>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
