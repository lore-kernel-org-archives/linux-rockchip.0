Return-Path: <SRS0=qhcO=LK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5948AC48BE5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 15:26:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1BA8E61002
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 15:26:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1BA8E61002
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyW9zOJdPttGyjxLaW1K401xOkGvfF9rqxyez7Gmofc=; b=BxnUpCkcy6TM17
	+j3aFrLqhJRKfiaOm37LBmWut9QxsfElPV3xpvxfhG4t/bl6wwfdSScqUZGw8C52J9rQ8cYs/6g7C
	eHWJP3BAfNjfawnko5jbHMgE0IX0FWhB/RLOLhgm/bU+44Vuo3/jEHVSewEZLw5/iVlCqoYByTKqa
	SqoA4NDZnYR7mo+VUof+27jGtlO/jAvr9ZqpnsFgp2oyEmzCYszlvjloHjE0oYafAS8l3uh75v4IK
	uRrIHkEr8nYbEF4NTNihkTwb8xkJ5ieEMR0rvXzrpr0AM2nlFpfJWHkqIAjccd2F43qQLWIlkJ/in
	P59DVzxum9tP2MuX9aTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltXRL-006shE-CD; Wed, 16 Jun 2021 15:26:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltXR6-006scv-2S; Wed, 16 Jun 2021 15:26:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AA3BD61351;
 Wed, 16 Jun 2021 15:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623857195;
 bh=3xXCvaDbNEswv4P3EZDSCt8erTYvLAXzHOYMuwuz1Ww=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HivM+S84zqbzmTFEAzqlT7DIlrD7ebnQZxgTFVz5lbtq+pTmi1WdNB2HTkn0yNdUt
 cG1H1f0z5m4zSfT87xw8U+wiPep2IPvNOSl4cktPPnbgnbuVwjS3n7c1p/XSBSAHqV
 JgOGUyqYTJuzAlapllhHUgY2SHDouwwNw003wFkE+vc40BCq9OOaIIIWPH+nBjEN2q
 KRKo0HECZfgWedrP9iDhhNZ7iZv4xb3ZhL/HsWMVbjWjB8mN+qzDRI8z7q1Wczz2Xj
 ZWKfXZ/KT8xJBsNv8zYXXrJiGftXDL0ZDikWgbVHRr4Qx4MoggGsWFVtaTwehnu8rA
 7rxyz+gCub2DA==
Received: by mail-ej1-f42.google.com with SMTP id ho18so4544737ejc.8;
 Wed, 16 Jun 2021 08:26:35 -0700 (PDT)
X-Gm-Message-State: AOAM533f1oGmr14/vS14x+N3tO+vecf+sYKFiF+Pe1yRoJqPs9p1+j1E
 fAlw4tlSz3G3k+oIGom17NXCMtaURBIvrDDNZA==
X-Google-Smtp-Source: ABdhPJz8r9vTMquViBFbsmX0qPQixhx4R2ORqm9BLcnS6feAH4JsnSA0IHrStdQYLfDT+jhlfZCtJ6LSbmlkepogdvk=
X-Received: by 2002:a17:907:264b:: with SMTP id
 ar11mr28912ejc.525.1623857194363; 
 Wed, 16 Jun 2021 08:26:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210607111837.31074-1-jon.lin@rock-chips.com>
 <20210615032620.24769-1-jon.lin@rock-chips.com>
 <20210615032620.24769-2-jon.lin@rock-chips.com>
In-Reply-To: <20210615032620.24769-2-jon.lin@rock-chips.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 16 Jun 2021 09:26:23 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJWzECC_=xm6OnB63ofnTQC_4VZZO-mhkiTJDYx=93fcw@mail.gmail.com>
Message-ID: <CAL_JsqJWzECC_=xm6OnB63ofnTQC_4VZZO-mhkiTJDYx=93fcw@mail.gmail.com>
Subject: Re: [PATCH v7 1/6] dt-bindings: spi: spi-rockchip: add description
 for rv1126
To: Jon Lin <jon.lin@rock-chips.com>
Cc: Mark Brown <broonie@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, 
 linux-spi <linux-spi@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_082636_176280_6BEFE67D 
X-CRM114-Status: GOOD (  14.63  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Mon, Jun 14, 2021 at 9:26 PM Jon Lin <jon.lin@rock-chips.com> wrote:
>
> The description below will be used for rv1126.dtsi or compatible one in
> the future
>
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> ---
>
> Changes in v7:
> - Fall back "rockchip,rv1126-spi" to "rockchip,rk3066-spi"
>
> Changes in v6:
> - Consider to compatibility, the "rockchip,rk3568-spi" is removed in
>   Series-changes v5, so the commit massage should also remove the
>   corresponding information
>
> Changes in v5:
> - Change to leave one compatible id rv1126, and rk3568 is compatible
>   with rv1126
>
> Changes in v4:
> - Adjust the order patches
> - Simply commit massage like redundancy "application" content
>
> Changes in v3:
> - Fix compile error which is find by Sascha in [v2,2/8]
>
>  Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
