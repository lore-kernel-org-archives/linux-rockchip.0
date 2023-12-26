Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B0EFC46CD4
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Dec 2023 16:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rG5r2cAa7Ps+J+GroCfry2byqVNQjoqEeS54ExFYZc=; b=xBrCVY6wlWizFv
	NS9V7KbbkpGQRHlUPuXfIKU5FCrO6kmp3LHyB9aRLsjFkWCiVjbwnyZFSrHCKe1Aj/mJnBp+rBhXh
	MS7PE8vfY3pyO3Ajddi8FJOmXSh42gs2ZEPiH4+vlHO9dwYE9v9ZS0ucvZMP5+c51rg5ufcw9Vtmz
	ZkJ2YN0EhMHcCbABgefui1tvqXVWZWYtHuuBSdru9bsSvBs4r+OPv0LIA7mAkNbTLwNK4opGYVotq
	f1v3nIcS9JgvYyiVZBPdyXJJiU/bZlh5crycN/lxuTXIs/obc0Gqw5HtQ2VrbNjSdSQTBRJmkb2Y5
	tojexUHsYSrMZzfyVqYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIAMR-00DGjm-24;
	Tue, 26 Dec 2023 16:32:55 +0000
Received: from mx0.riseup.net ([198.252.153.6])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIAMN-00DGi3-1K;
	Tue, 26 Dec 2023 16:32:52 +0000
Received: from fews01-sea.riseup.net (fews01-sea-pn.riseup.net [10.0.1.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx0.riseup.net (Postfix) with ESMTPS id 4T00gD3yZnz9x1s;
	Tue, 26 Dec 2023 16:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1703608361; bh=7Z0QZDUqtUb0SVOcfo3DjMkSg2JZFz632/axgQAClno=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JXqaeUHrIrSN6gbZDKjZy79covUTsKAg6oibqlNHR+2TlmeRWbH4NZGI+wU02FXtW
	 LIpb6ARaMqpHBgrNEVK8k0S/uJ4FMR7ixYu2c1VxHJXhXXIZeKlCnYXTw8WLuDVaM/
	 Voc/WXwl9uttpnd8/zNHB6out9t98u05IhOW5C5Y=
X-Riseup-User-ID: E3266E2FE8A468CF052B0366B6691ACFC63C59369F6E61E12BD8CA58073E2F17
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews01-sea.riseup.net (Postfix) with ESMTPSA id 4T00ft4lBtzJmth;
	Tue, 26 Dec 2023 16:32:22 +0000 (UTC)
From: Dang Huynh <danct12@riseup.net>
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>,
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>,
 Manuel Traut <manut@mecka.net>, Diederik de Haas <didi.debian@cknow.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 0/4] arm64: rockchip: Pine64 pinetab2 support
Date: Tue, 26 Dec 2023 16:32:10 +0000
Message-ID: <6875992.lOV4Wx5bFT@melttower>
In-Reply-To: <2905432.tPBmtbmofK@bagend>
References: <20231223-pinetab2-v2-0-ec1856d0030e@mecka.net> <2905432.tPBmtbmofK@bagend>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_083251_465736_25C965BF 
X-CRM114-Status: GOOD (  12.96  )
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

On Tuesday, December 26, 2023 1:32:32 PM UTC Diederik de Haas wrote:
> [    5.570059] dwmmc_rockchip fe2c0000.mmc: could not set regulator OCR
> (-22) [    5.570835] dwmmc_rockchip fe2c0000.mmc: failed to enable vmmc
> regulator [    5.616373] dwmmc_rockchip fe2c0000.mmc: could not set
> regulator OCR (-22) [    5.621903] dwmmc_rockchip fe2c0000.mmc: failed to
> enable vmmc regulator
This is the WLAN SDIO, the error shows up when the device is not powered on.

> Both also have an error wrt `goodix_911_cfg.bin` firmware, but the error
> could be because Debian kernel 'upgraded' a warning to an error.
> I've searched online for that filename, but haven't found anything.
> The touchscreen works, so I guess that one can be ignored.
This can be ignored, it's for touch panels where it's config is not on flash 
(typically touch panel calibration data).



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
