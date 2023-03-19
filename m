Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 567F1C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Mar 2023 21:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPLZ3BBghVAp6wEMan1oUteIAk5zF3O/y36i70H7E6o=; b=3393dhOLB1c8in
	qB+e/PUhVMwbmFBPjFNLqqYU3oOiyJf6Z5PKzKwTBQzhhSIjIKFCWoqpzyCzOJHeibcaelcXlNU6C
	qGTC+4+jsnbsGisf88WKXPogqo3W/Z9TH/P7adtbISfcgZSj5THFrYauHGQF89EQhBDCNqZILQglB
	KgGktkU9v/3CqDcNPHI041gV8xBGdsMoMnV2EZ2LXIDdBObPKzMWaed44eaXRKJda8PDkQAX+5Lhk
	UgFSVbNmWojx0clDAaZBFoN+7fsrUZq2t4krigU9AOpfPDfT/2Z9brd0mCebwyMtRabh/ZedL6CdS
	n0mwu7D6tbGe3tnBg39g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pe0Ot-007SiO-1h;
	Sun, 19 Mar 2023 21:17:11 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pe0Op-007Sgp-08
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Mar 2023 21:17:09 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id z83so10878486ybb.2
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Mar 2023 14:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679260626;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=umIKUZ29cWxRGLpplScGRMR85hsAlE3Adfx/LlasVhM=;
        b=odOHan5KodgnZmQYP5bE+Zx5oWuObSka+JlAj9+I+PEuls9mRUte5Fd1E9WehPEH0v
         ZEUouTX/UvXXQBiT/SNrO1n/f3o+kSQlfaYmdNK4DAR8Ejqf2fhzotkFgCdRQtcs1CVC
         t5VLMfDqC+6dzZCRc67iIWhzpcy/Pk8gir+iKkECVK6wCNHZH2ZDuC5lvdh7tZq5DQuj
         ObQBbb4TSLQVxE7XBRQy+d8Lbb9XjTL/2eJtfomhereizk9tghsCcrHhrXpWlcA+TL2p
         v61FtSAq1/yzKQz5Qm+nbB//3YVMqfY7U/pGKdm4qJTu9FwuezpIoi2MADQXjrLIWQlB
         6CZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679260626;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=umIKUZ29cWxRGLpplScGRMR85hsAlE3Adfx/LlasVhM=;
        b=TT2iq01YdzmSAzqApIFTsIFrTgoMv8KyFdtoQmN5tQWhQXVCKclrtklvadO487iRTs
         XTW2tiyq3vsgJ0/sFkQu2PuzQwe7KS/lsHvvY89PIN32CBJ0Qucyu0i1wh7m+W0owkJp
         gQalVbk6MexO3wnICIuGOarSlen6R+CTfadQwoG3o83nldUcRunX8WJG8ufd7Qud0SZW
         yBwI/oTlRiifGiSEojM339ZooX7s2t9YiCkZHaRkImnGmBuMDtPX6BMD8IfstbLwZDLr
         FVsBkbPurFbEbBdx/NKBKEhq3ARUVaxSGMuVttRVJHT3kmIPglN0o3W7bHGZw2nhVSP7
         IiQQ==
X-Gm-Message-State: AO0yUKVbqgUyqWVa0g3QqQzsPH4sT3HZ4/r2gVyC/Wt/cp1XeXIqHQKa
	mztTkKoOcREFuKIv+coCtc9FknO9TgZZ9YikV1ewww==
X-Google-Smtp-Source: AK7set9Y0TmDGARQ0tonQqRCQHdH+03X2NR6qq22FebqKohfKPMVp4wrMtKTGiLfsl0XoE3P/cG/TeF1FO39PIanZTY=
X-Received: by 2002:a05:6902:1143:b0:aa9:bd2e:3746 with SMTP id
 p3-20020a056902114300b00aa9bd2e3746mr2999493ybu.4.1679260626301; Sun, 19 Mar
 2023 14:17:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230317233631.3968509-1-robh@kernel.org>
In-Reply-To: <20230317233631.3968509-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 19 Mar 2023 22:16:55 +0100
Message-ID: <CACRpkdY0twhF1+ipbV0DuWUdeCyq09uZidyVSNr7eW=K6ecnkw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: Drop unneeded quotes
To: Rob Herring <robh@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Naga Sureshkumar Relli <nagasure@xilinx.com>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Pratyush Yadav <pratyush@kernel.org>, 
	Michael Walle <michael@walle.cc>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_141707_077539_CEBB02C0 
X-CRM114-Status: UNSURE (   8.39  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU2F0LCBNYXIgMTgsIDIwMjMgYXQgMTI6MzbigK9BTSBSb2IgSGVycmluZyA8cm9iaEBrZXJu
ZWwub3JnPiB3cm90ZToKCj4gQ2xlYW51cCBiaW5kaW5ncyBkcm9wcGluZyB1bm5lZWRlZCBxdW90
ZXMuIE9uY2UgYWxsIHRoZXNlIGFyZSBmaXhlZCwKPiBjaGVja2luZyBmb3IgdGhpcyBjYW4gYmUg
ZW5hYmxlZCBpbiB5YW1sbGludC4KPgo+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIDxyb2Jo
QGtlcm5lbC5vcmc+CgpSZXZpZXdlZC1ieTogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBs
aW5hcm8ub3JnPgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
