Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEA65ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 13:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rz9hzn8goBqRCEGhef80ECTtHhRyfyaLc3+hoe7oSjk=; b=YM095vMrJpJsXy
	oXIVxOq899N7MbEIPaTMBcXIBUvpWL/WaDLYOkPYDPlLqf9Ho9pNWzJWNf/f6CSC4cVUpCkU1YhTu
	O4AL2TTPN3XiPvwb9ctLCXTJlD7ASEJUmTUVLjcbzQlhj8R7lACuzB9z/TqN/Yt/J+90SsDEwCgML
	IXgKFzgrX0zGrSav/kOn+jdKH//JPjpJTlQkJ7iMGucLh1J0s6qqX7Tm4qPmAM8wgcJ+SaZJiLTZ8
	ihFK24nnhIjDC2MVKoQIqUXh0lniy57FFqnSedmJMRcBtjSdLsBQfyUTsbOt1zjpCmP1eVofROWi6
	VfnE9u1OYTARUYBD1qTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obj56-004VJa-Ot; Fri, 23 Sep 2022 13:51:04 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obj4t-004VGT-Jg; Fri, 23 Sep 2022 13:50:55 +0000
Received: from notapiano (unknown [71.190.76.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nfraprado)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3955A660223B;
	Fri, 23 Sep 2022 14:50:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663941048;
	bh=J5DirfViUkwJD4ekJAf61ocSdPfp0ombx6YicS66mw4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ahfHXptDSB4fesh8jybOFGEXFDdo4EEmrAZ88hrafm8c8DRucM5LdE/oH+U6uLajI
	 IkRyMWc9hDqaTxtK01VbB5GFtUaoq/iYetdTE7/8LP/6Nu44atKnMcJR4zOwygRJ29
	 ZpXiEszq99nmiw+jPEqpGfHlWFjswBtYjYAa2Y9/Hmn00Cx+VeipSc5mRp8rcsOCD8
	 i5o38J0VODWjUTeahco/9crjEyn4Dim57TaGJx9LpFzFLU2H9wLMlU6R80JDKvAwZN
	 gtDlR0PqbExSurVMQxyukbBs714zpGuIITvuGKsIpf17lnjBbLzoH/dCNVpJVPrpXv
	 Ebs9pz6HYTdRQ==
Date: Fri, 23 Sep 2022 09:50:41 -0400
From: =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <nfraprado@collabora.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, zhangqing@rock-chips.com, finley.xiao@rock-chips.com,
	shawn.lin@rock-chips.com, zhengxing@rock-chips.com,
	jeffy.chen@rock-chips.com, andy.yan@rock-chips.com,
	eric@engestrom.ch, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, sboyd@kernel.org,
	mturquette@baylibre.com, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: clock: rockchip: change
 SPDX-License-Identifier
Message-ID: <20220923134927.imjqakww37ctjvdr@notapiano>
References: <20c6a502-2ff5-bdb1-fb4f-0741f3a2c19c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20c6a502-2ff5-bdb1-fb4f-0741f3a2c19c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_065051_796288_8CCF50AA 
X-CRM114-Status: UNSURE (   8.29  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Sep 20, 2022 at 12:25:07AM +0200, Johan Jonker wrote:
> Change SPDX-License-Identifier to (GPL-2.0+ OR MIT)
> for Rockchip clock bindings.
> =

> Cc: Heiko St=FCbner <heiko@sntech.de>
> Cc: Elaine Zhang <zhangqing@rock-chips.com>
> Cc: Xing Zheng <zhengxing@rock-chips.com>
> Cc: Jeffy Chen <jeffy.chen@rock-chips.com>
> Cc: Finley Xiao <finley.xiao@rock-chips.com>
> Cc: Andy Yan <andy.yan@rock-chips.com>
> Cc: Shawn Lin <shawn.lin@rock-chips.com>
> Cc: Eric Engestrom <eric@engestrom.ch>
> Cc: Myl=E8ne Josserand <mylene.josserand@collabora.com>
> Cc: N=EDcolas F. R. A. Prado <nfraprado@collabora.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> =

> Request for copyright holder approval.
> Rockchip recently replied on other clock-patches to dual-license the
> binding.

Acked-by: N=EDcolas F. R. A. Prado <nfraprado@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
