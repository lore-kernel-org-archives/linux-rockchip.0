Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31321C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 21:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qe/XQsoAS5497CHYIsLJFlv5N06gDH3BRJXE/p1XgJs=; b=ojgkidQ3IxA6GA
	epM8POcTh4oofSIeJH5vkq1WxdkS9NZOFu/5bF69+Nw2ZPi2bzsUpbh8Ifnnbblqj6ARxXKzqPEjF
	fdmRmrUbQuKJKSsYgaS8S2ug+wOnniScsRxR9Ca5mrQn7IJ6A8CYuuI9y4JyKjgU7fQIY/Oz6SslM
	LqmOGvSVHl8s6ovbdFhL2VLMY01lOjr1ygRpCmlTl2cNhRw+KXW79wMT6rXGCg9nC8kqftnExgJxF
	3YcJwuozUEaTW2BKzcfTkuLM5iocCSlSBC5n7ekSQawiuxBLJ4pIG5EV+KhNT3V779P0TlDkPdTo4
	wm5TsEV0KcYx4n39uXnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPA41-000d4a-Jz; Tue, 01 Mar 2022 21:29:45 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPA3p-000d1p-Hi; Tue, 01 Mar 2022 21:29:35 +0000
Received: by mail-pj1-x1031.google.com with SMTP id m22so41493pja.0;
 Tue, 01 Mar 2022 13:29:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DGIwCRJ08COyw7PR1rsiNp32WL6MSW0ZZqWA6FpVwow=;
 b=ar0Fs4LovpkwmRH7wMMcKkiU9qubdM3wbK724HpGT0TYhxpkKaQ9Ezh4uEaSKL/T8c
 OMl/yAWSESYv4eMLqxPfdVGvU0QrihF4jWM8ITHxwy0QllCLJWY8KmdImGDHtGf+8PkR
 jSOE9kU8RvlpEvb7wsySFldURbexKbgNO7V23WlcspUYJyC7lHIjo1R7yLXPeHLxMvRP
 xkQ7VzCIf9tY+eXuo309VImD1zKNM7OFrHPzC/V7aDlmCKBtOfwwTxjeX7DmeIVefqTu
 l2034rt6zAnsuh3/EbUBeYUS5Aa61dS4kqGp0oy0BBarrAwckfvO6Whal7Igg6qmiK3X
 0wMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DGIwCRJ08COyw7PR1rsiNp32WL6MSW0ZZqWA6FpVwow=;
 b=N1STVAACIFPUQI/hVltWbYGiyoNV+UWD5vu5lOG6EC/fht4iSTotJEmRq2DauF9cs9
 4x6xfYe1rjGlmSMhlVKPKIczzUPgUoWK2BbDWJNTva+uUm44QTURA3ZnnfWUZ6oCokNV
 QgwYBUoUBqg4yHPEklYexwUvmDbamw6/jR5tXbYWui4mt6G8i510tRwPAe0IAmE7dZsO
 /XwmEo6U8YrUH1YgaOgBuFqNqvIupsgaMdij0Ds0DTrTQ6Mlp8MUtqsR0L3WptNx1I90
 U2g0aA6EuTC8qhoipCH0f6fHePk17eX6Iu5v35cum5New9G4GKgbOFFYDP2vOHlyGEzV
 pm7g==
X-Gm-Message-State: AOAM533E5uWWtIRzZVGVEHa+1ZB75XzAGrmWZWLWRDE2QjK1bt+48Eng
 tVGjCujKrxfrhVTc3RS1Bc9fr6DBxD8=
X-Google-Smtp-Source: ABdhPJy0Q5dgrns/oIZkTNckMxvWJETNvP8GrishcqTCfiX+I3jtP+pr2rAYyQWHuH9xh1cox5pglA==
X-Received: by 2002:a17:902:7083:b0:14f:bb5c:bc0f with SMTP id
 z3-20020a170902708300b0014fbb5cbc0fmr27462796plk.77.1646170172570; 
 Tue, 01 Mar 2022 13:29:32 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id
 y191-20020a6264c8000000b004e1bf2f580csm17600136pfb.78.2022.03.01.13.29.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Mar 2022 13:29:31 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, Frank Wunderlich <linux@fw-web.de>,
 devicetree@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: Re: [PATCH v4 2/5] arm64: dts: broadcom: Fix sata nodename
Date: Tue,  1 Mar 2022 13:29:29 -0800
Message-Id: <20220301212929.2017324-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220301152421.57281-3-linux@fw-web.de>
References: <20220301152421.57281-1-linux@fw-web.de>
 <20220301152421.57281-3-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_132933_621756_982BEAE7 
X-CRM114-Status: GOOD (  11.10  )
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

On Tue,  1 Mar 2022 16:24:18 +0100, Frank Wunderlich <linux@fw-web.de> wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> After converting ahci-platform txt binding to yaml nodename is reported
> as not matching the standard:
> 
> arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dt.yaml:
> ahci@663f2000: $nodename:0: 'ahci@663f2000' does not match '^sata(@.*)?$'
> 
> Fix it to match binding.
> 
> Fixes: ac9aae00f0fc ("arm64: dts: Add SATA3 AHCI and SATA3 PHY DT nodes for NS2")
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
