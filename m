Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09A4FC282D2
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 15:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwZeG1ugGdWksOxpA7W54dd/yx2bLClTTh9sz+ZViBc=; b=ccqWAOvJT3VAjr
	DHs9c0bSXSAzk6xDI0KCZezzmZC+6n5jWkJOhjaKxdbtEAUnMjCaD6Cn3mqO+C12D67HskNNIFmqc
	0rexAzI8j954A+i3azd7VhDQ77OybGZIxlu3RBn3yorDKqMLirIJhl4iO5yJ3dwfGcFTe0jM+ifFN
	o39pv9ZSrGEdrhfxi/WrasIsV0NXMJCg4mTuJyjzGmKvlJa891lVVouXEuZ05886z+LK7umIUZARA
	3rrvIiHio/zeWYs4ANnt95ZZW5bXNEEVwmeLUKtgFR003Zf+ayRaBrjyiTkd5PRgt8ylP8nXMahSr
	Zb/bHhR0Feylzb0w6m+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpU1U-00000005ALx-0prO;
	Tue, 04 Mar 2025 15:17:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpTmH-000000056mC-0G1i;
	Tue, 04 Mar 2025 15:01:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A46255C5D9E;
	Tue,  4 Mar 2025 14:59:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F9C2C4CEE7;
	Tue,  4 Mar 2025 15:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741100508;
	bh=0TGSUiUrfOUNocWhd88Frz95OVwI2CI52+kxajp28uc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=RTuwsPTdAkwrm9FFMwHfyPw2LFKRRoMMx43cYNOhTcUzSJokQVOutNayNYo1WiuVQ
	 hrQfJZ5gIQuQkBDf+iugh+dVMaXgXU8c6iMHcu+PjqlreD4pRPf03o+XN2LoiXo0u+
	 udg5k77CHReM9vHiXPzEulGZ8R9iqu3kCLZ2hSjZK0XVsoeaYrp+Znw8Xn3H+TNu94
	 14xJ1kHMbaJ6D1k5v0iuDV71l2a5y3HFAonXcug6c5Q0jnklmVFj/q7Ot1dto5zg+R
	 Y3Vx8lVVodFqSQ+ApweQYzSJ3nF1291JG9aHnPzKRTZbDChAcDmfwfszywbgtRycv2
	 WeG7PYiXEN73g==
Date: Tue, 4 Mar 2025 15:01:35 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Kever Yang <kever.yang@rock-chips.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, Detlev Casanova <detlev.casanova@collabora.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, linux-arm-kernel@lists.infradead.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: Add
 rockchip,rk3562-saradc string
Message-ID: <20250304150135.5ac5bb1c@jic23-huawei>
In-Reply-To: <174077321955.3490993.13046330315407577605.robh@kernel.org>
References: <20250227110343.2342017-1-kever.yang@rock-chips.com>
	<174077321955.3490993.13046330315407577605.robh@kernel.org>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_070149_144979_63CC771E 
X-CRM114-Status: GOOD (  15.33  )
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

On Fri, 28 Feb 2025 14:06:59 -0600
"Rob Herring (Arm)" <robh@kernel.org> wrote:

> On Thu, 27 Feb 2025 19:03:42 +0800, Kever Yang wrote:
> > Add rockchip,rk3562-saradc compatible string.
> > The saradc on rk3562 is v2 controller, with 10bit width which is different
> > with rk3588.
> > 
> > Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> > ---
> > 
> > Changes in v2:
> > - fix dtb check error
> > 
> >  Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >   
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> 

Hi Kever,
I'm applying patches in a fairly random order today and in this
case I'd already picked up support for the rk3528 so there was a bit
of noise on this. Please check the result in the testing branch of iio.git
on kernel.org.

Thanks,

Jonathan


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
