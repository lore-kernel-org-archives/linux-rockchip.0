Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1700C71157
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jun 2025 13:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhQqTzfs+yoVPxSM2WzIDYZJ1RLN5KFwrXONCArlfD0=; b=QqMv1ZNHMdlev6
	JFXNKHmfEfhhs49+6jAoE3dygRUAN7UwyT5bbsdUUmcaTHjaMETKmORRS4XNlXbjJqBMwNQIe7yUO
	pxo0QsikXhCNE8UJxzzk7WlpEvPPhLVgVwm8tIW8mdbfq3h6zAeROYJZ5OK0cojQS9DBa9PUGvoLS
	I6iivcvYrDkfjkzUtnWhvGDrv0DXc6uj0uALzJmx774jW7M/VtFji7UFD8sjR6veJ0Sdj8RSs4siX
	jTavWUxXceXatA/aMUT2Lq07PJTGTHrumuzgPx3oxT+L/uzpcFXt/UpC5wTV5qHrwhmOFOozAbNv9
	tIbpSxj3aZEgK8gfDokA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRtAd-0000000AM2d-2wcG;
	Wed, 18 Jun 2025 13:49:43 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRryQ-0000000A8nP-1d57
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Jun 2025 12:33:03 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-553b5165cf5so5818560e87.0
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jun 2025 05:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750249981; x=1750854781; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=er9GV70+n6drdF5uljPxPj0kVCu/2tf7ro4DCkzk2hA=;
        b=MHCcTRoNGz+Sidhum8kKN+EBpGHNfSpV0OVmpyUI5Uk9pyzv+YGajgn5alKNAZ6DR2
         uncvh2d3Y2TW+Aq+36XfcVRsOyw/gYlGG7vQEuDkFKlgHgkl/WHvDx5R3cT9+fjEM8QU
         RfSCDJN8/0b23OSRLwldz2puQ1a5BsROchbzHWgasSRHTUET/cvGL0xLBtwi0X8bMZ3s
         5lXxoORYb4Zwa++UJKpxlusvlBDPfofiFHgTDCOHpskeq+U6AT36Up7oq0WeyJMCeNrt
         UrBvR3N0AUd/LlyDiIzkdfzaqlGiRtWUkZkx2diD3eGBbHeIRcEKh0zifYHPQ2lOiTQ2
         T7MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750249981; x=1750854781;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=er9GV70+n6drdF5uljPxPj0kVCu/2tf7ro4DCkzk2hA=;
        b=rkNBecpFZH8cf87Fst/ZwaC8whXej49KTrlZGUwzMTf74YOODzMEmz94+DKxats5HE
         NMCCbdZGVmF8pNFMB87DKdXiDlnIOwqI+vFATwO+dmFJNo35zXfEpSM8wwiMe7CHLdGy
         LjCsHOQCbO3413MYy/NdnTUepnBRLVz6q464bb6TWgEtW9HA4zsiDgUgUQr28jqr/faP
         0vayxu83TOak9tAjLJYjBCB9c35/A7z2g7IvX1PUo2bT0j7ROmke/WBAHdfxktl8B+2k
         XPOfom9UlVz3yV7shzS2nRtCZD3+dPg67VP4ftfnzuKXNjImpIbqexxbIVD08E0WIJwv
         uEnA==
X-Forwarded-Encrypted: i=1; AJvYcCXqDAX8VcgzrTa2xEy4GdcQsAdIbBGHgoUCyMWXKGgOqspjSWvrUjiaN6NbMqBBmf/LGOengPPd/d+r/5/FZA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzQ4zmygH7gWhBC5N/Wza189D5Tl9qvV5621X+xPPnONV7QLtJ9
	Olf64dDNvT2tXyhDy/FclI7SfbajZphcp6K4+tr8LAqXubP9gbyhNSlp52HO/6NRGbxF/Aa/1CQ
	GTfoaqtckndqR7X2Cbxw7XvlHgn6WDfNy7KbGWL3EpA==
X-Gm-Gg: ASbGncuajDEWPJFReEhr6tiQZyTwOUpSTqBIKH0b8z0eNOMuWEDehaop1vuCpeRCIB/
	gif6nek6Pv8BWwJiKdflIHzYg5zCf7nW88zVwli6AgIYshhmvkun6lAfEDth2KD4zsP2VsgTSn+
	VDf3lraLHODtfxXL7CHerUiEBbdzy3p6yPJ+xz8kVGQ9A=
X-Google-Smtp-Source: AGHT+IHq8x+MK2Q+KzO0wn+EOPqwTKlQ89Mryv/yfukFFFcWkFHUwXTR4wa+yfRd5KaBrFwNGubCyPjw0k/OwXSOfLY=
X-Received: by 2002:a05:6512:3055:b0:549:8b24:989d with SMTP id
 2adb3069b0e04-553b6da8081mr4547256e87.0.1750249980579; Wed, 18 Jun 2025
 05:33:00 -0700 (PDT)
MIME-Version: 1.0
References: <20250617-gpiochip-set-rv-gpio-v1-0-903703881fa2@linaro.org> <20250617-gpiochip-set-rv-gpio-v1-4-903703881fa2@linaro.org>
In-Reply-To: <20250617-gpiochip-set-rv-gpio-v1-4-903703881fa2@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Jun 2025 14:32:49 +0200
X-Gm-Features: AX0GCFsjhUtynB_l1wpCuP4ZMWcDzuGMXSliazPojtQjqWcgC-p_VmDP2UNLCdM
Message-ID: <CACRpkdZPPh4zjL2+2e1_2nsU13TyyDCcAhOok2cF4PGwnqA5pw@mail.gmail.com>
Subject: Re: [PATCH 04/12] gpio: pl061: use new GPIO line value setter callbacks
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Andy Shevchenko <andy@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_053302_425280_5086D87C 
X-CRM114-Status: UNSURE (   8.55  )
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

T24gVHVlLCBKdW4gMTcsIDIwMjUgYXQgMjoyNOKAr1BNIEJhcnRvc3ogR29sYXN6ZXdza2kgPGJy
Z2xAYmdkZXYucGw+IHdyb3RlOgoKPiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiYXJ0b3N6
LmdvbGFzemV3c2tpQGxpbmFyby5vcmc+Cj4KPiBzdHJ1Y3QgZ3Bpb19jaGlwIG5vdyBoYXMgY2Fs
bGJhY2tzIGZvciBzZXR0aW5nIGxpbmUgdmFsdWVzIHRoYXQgcmV0dXJuCj4gYW4gaW50ZWdlciwg
YWxsb3dpbmcgdG8gaW5kaWNhdGUgZmFpbHVyZXMuIENvbnZlcnQgdGhlIGRyaXZlciB0byB1c2lu
Zwo+IHRoZW0uCj4KPiBTaWduZWQtb2ZmLWJ5OiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiYXJ0b3N6
LmdvbGFzemV3c2tpQGxpbmFyby5vcmc+CgpSZXZpZXdlZC1ieTogTGludXMgV2FsbGVpaiA8bGlu
dXMud2FsbGVpakBsaW5hcm8ub3JnPgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
