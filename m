Return-Path: <SRS0=g7df=PF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8964BC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 15:31:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 561BC6125F
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 15:31:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 561BC6125F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJ34mDRCNuZ2oAOBH2pChp7OzVRCAb5KSO7OOZTVC3A=; b=CTb1GBi+rV2DwP
	a/hZ93z0KquoLkR43NWzcVLAqJUbEqEKYXR7rPt/u86wzneHO+2fZdSH7iafiRZ3olkSF7/rhSBPD
	zxixUd5pELYtwm2dkJpd5AY8frd7LsFSh3JvEOdcfU80MmU4fci1+e/CotX2BtU+Gka5GMtu4nxHZ
	mNECJND0g3nUXQaYynFuMAwMz0+jxf+Jb9LRTRu9Qs58OHXnMw389V0aRa7xUuJd0eSf+iVDd/NmJ
	qKubTexji6dzwip7Bnf9fE8IZoj9g3lAcR22BDhlWt/jkGIWZYjIO5exZ4oxrPVStNWwK0bGU1Ypz
	nqhbGo4c+8DNMWGWn8Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mc88C-00Cs2i-7u; Sun, 17 Oct 2021 15:31:24 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mc888-00Cs0F-E4
 for linux-rockchip@lists.infradead.org; Sun, 17 Oct 2021 15:31:21 +0000
Received: by mail-oi1-x236.google.com with SMTP id m67so20946832oif.6
 for <linux-rockchip@lists.infradead.org>; Sun, 17 Oct 2021 08:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xNI/fqSmWltjImZA+3I0T0IoPCdlprAOazFOStLyFNQ=;
 b=eIn3KPrwMzRcAEhVrvpaCX1sK1rURrMUuzGw6u8KDZb5pOCqybeVIJ42eNZB16MjyW
 IxZyo3C8K90IlNMJOvlGDMAcNpMLT3h3RJNxQob9SBC0ltatbxZQ1E0wTXYfwhQzs+xS
 GXEILVFfC0jkbU1LqQc2StSicMpc2G61bgO2IymliMOs/rTTI1nnMcfmnqKjK0NP699A
 /8eNlf1lg/Bqev+nMmKar8bOC+JdloqAIDTfYQDF+LNCeCOzayh9O/n4GOc2Pths/9My
 762onKZvrtqjXDETlJHmOYt/JIJnx//tE+IizCVPwvSAzYXy0ikDlTXWsehIKk1hOgQm
 YLFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xNI/fqSmWltjImZA+3I0T0IoPCdlprAOazFOStLyFNQ=;
 b=718zC4ypOkWAs6UGRhQd6J0LWztjR4VgErn8Xi5ECHVpsk6M/5Wr9brLZONad2li3z
 mv2qyz2mUZIE6VW7pfwoeDDVzf9ERD5axQtezAOZY84GdAf12Cnk8QRlJSm7ZNPPCd2n
 dUvYwW7UwfU1qSV0yNYhznZNktZ/yV+4u2dITcESpc5qwdHkyNc7QKGOjNWvtMu44WRG
 wcZGYTKtF4InCBCmukwdcYapPtU2lC4QY/dZQ+JmTOGUvQ5VjbhN6V6r1OgKzeOMb0O1
 cpXipWjPDh9vvoRHxl7uWU1iya9BRPRjPFLwhnlNqLxea8f3HDxxw0HxDq7bCT56hpCL
 D0fg==
X-Gm-Message-State: AOAM532Ap9U0WzhpKQpF1/wqXFtv/gC9oTCgkxgPpwzNPl570AkXD9QK
 AnSmygS/byU6lw4rzCBS3p3Gpw==
X-Google-Smtp-Source: ABdhPJwVxS/MjPNX0T0Nx9Mr6ypflotXnob3w24BwfCxT2HW++E7bsXZHzZF9vRr299QYpi1mB+1oQ==
X-Received: by 2002:a54:4f8f:: with SMTP id g15mr15986476oiy.169.1634484679542; 
 Sun, 17 Oct 2021 08:31:19 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
 by smtp.gmail.com with ESMTPSA id x6sm2565698otp.49.2021.10.17.08.31.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Oct 2021 08:31:19 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: linux-kernel@vger.kernel.org,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>
Cc: Shunqian Zheng <zhengsq@rock-chips.com>, Shawn Guo <shawnguo@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-msm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Guido Gunther <agx@sigxcpu.org>, Johan Jonker <jbx6244@gmail.com>,
 Martin Kepplinger <martink@posteo.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-sunxi@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Dan Johansen <strit@manjaro.org>, Tomasz Figa <tfiga@chromium.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-rockchip@lists.infradead.org, Lucas Stach <dev@lynxeye.de>,
 Simon South <simon@simonsouth.net>, Fabio Estevam <festevam@gmail.com>,
 Matthias Brugger <mbrugger@suse.com>, Chen-Yu Tsai <wens@csie.org>,
 Brian Norris <briannorris@chromium.org>, Andy Gross <agross@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Angus Ainslie <angus@akkea.ca>,
 Rob Herring <robh+dt@kernel.org>, Eddie Cai <eddie.cai.linux@gmail.com>
Subject: Re: (subset) [PATCH 3/4] arm64: dts: qcom: add 'chassis-type' property
Date: Sun, 17 Oct 2021 10:31:04 -0500
Message-Id: <163448466184.410927.10597282951257964258.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211016102025.23346-4-arnaud.ferraris@collabora.com>
References: <20211016102025.23346-1-arnaud.ferraris@collabora.com>
 <20211016102025.23346-4-arnaud.ferraris@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_083120_529104_FAC63F78 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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

On Sat, 16 Oct 2021 12:20:24 +0200, Arnaud Ferraris wrote:
> A new 'chassis-type' root node property has recently been approved for
> the device-tree specification, in order to provide a simple way for
> userspace to detect the device form factor and adjust their behavior
> accordingly.
> 
> This patch fills in this property for end-user devices (such as laptops,
> smartphones and tablets) based on Qualcomm ARM64 processors.
> 
> [...]

Applied, thanks!

[3/4] arm64: dts: qcom: add 'chassis-type' property
      commit: eaa744b1c101a33fba5978866defc8a7e87f8d79

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
