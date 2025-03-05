Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60F26C282D0
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 00:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cs/l9m+Ar5Dwdd6whFFRDgMdeb36WfzHg3VHEqib+ow=; b=TOcxWTRUMwUN5j
	2c+5LR42eRZot8fe3bOUKiBd/VC7l4GYggVEnZahw7F9U55bJmxOLbjHDTySgQPThKMuSekMya+HC
	aURpTbRErA4RbXhTH2V5VTJGqH2ImIr+szflnMOEOxgtvHWkmSl9dx+/Y3w3+1zO3tsCh355/8hNm
	40GSfFeXkAhiTllJieTHFl2rmO7W1WSBG5LH7dQ+DEGItZvX24J+GdjwMmJznAvSb44aL7JoHrjpt
	EwF4zq/7y4zQtEYHVdgkusU3bnpDrSTx16I8BtR0PBviC8FpL5GymKV8HVCTUntJ8zRh0svmlzbeb
	6ie0t/bvfepqHDAq47Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpd6X-00000006gDf-1V6C;
	Wed, 05 Mar 2025 00:59:21 +0000
Received: from mout-p-202.mailbox.org ([80.241.56.172])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpd6U-00000006gC6-19Fx
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Mar 2025 00:59:19 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4Z6vMM6CMnz9sDC;
	Wed,  5 Mar 2025 01:59:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=timsurber.de;
	s=MBO0001; t=1741136351;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g+ZY31mwMBYNXiIDfFFLjYMHOtlHQsLzWF/C7XP8dnM=;
	b=vvcv9+3rtspBvWyfZd6velSRmXfLID17p/InXKYl9N97k4TH1SlVuFJDhQjeok5AkhX/WX
	s3sJAAc1XP+kL7DxiE1JSNbkqCIVCCYyeSTWbQifym1Tmt692SE18dD/h5EMvn6dWqgQl9
	M077dUIs+njiATNFzRS/HPYSg3otL4vkDhmLR725jzJ+qFKYy2h0Mu/mzMXv6Zatbu4Qqz
	byoo3EAzCIrFFflGo+RAYV9BDVS8meiDs+PuaMAuFXNcrKwYqk62ZC2h9DbG1owOBBaVNE
	2gLnTshZQKz6pCSSKmhtw3EIp51GFBzG8oYtE6EKzQuguabsiv9i5Yhm2zZ6xA==
Message-ID: <1039aca7-89b9-44ef-9775-e7852e956362@timsurber.de>
Date: Wed, 5 Mar 2025 01:59:07 +0100
MIME-Version: 1.0
Subject: Re: [PATCH v13 0/6] Add Synopsys DesignWare HDMI RX Controller
From: Tim Surber <me@timsurber.de>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Diederik de Haas <didi.debian@cknow.org>
References: <20250304085819.108067-1-dmitry.osipenko@collabora.com>
 <78ff36f6-01a7-4df4-b653-c4509fb93af4@timsurber.de>
Content-Language: en-US
In-Reply-To: <78ff36f6-01a7-4df4-b653-c4509fb93af4@timsurber.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_165918_774686_654B961B 
X-CRM114-Status: UNSURE (   9.71  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dmitry,

I did some more testing. That the Apple TV did not work was a bit 
misleading.

It was just, that the Apple TV defaulted to 4:4:4 Chroma which does not 
work at all for me. (The same happens using the vendor driver).

When I changed the EDID to match the vendor driver the HDMI handshake 
happened with 4:2:0 chroma, where I could verify even 4k60fps using your 
driver, nice!

So the remaining problems I see are:
- 4:4:4 chroma not working in any resolution
- 4:2:2 and RGB not working in 4k60fps (is this a hardware limitation?)

A possible workaround could be to disable these non supported formats in 
the default EDID.

Best regards,
TIm

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
