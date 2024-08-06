Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F55FC52D71
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Aug 2024 17:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5x0ES+Wv5M1I3fVthVrSBGi4QHmOWI3OrMF8KO9/9IY=; b=1f7jDAzxC906eZ
	F07OlUyGGLwVc/njXBuhV+TOXb7dIEkVSYzP2M2U6c2urQ8OlHuzy+ekN0KaHZlKLg+b2Sq0Dtc9w
	iysInDngLebBK4W0TG637aQU0yayv43vXbjuophNfRfzslRpoHbD6yR9pXcZnj99Z+iJGpFVQqQW6
	Mg5de1aFZSFiCGMpaDj08ooWvchd55tKj8uF4VekfALg3pHcqPU7Z5X99Mrdd6HWp0BUCHvlW8PKc
	79QSexIbdjRPilajh0VxSMNq+FF9aX+KrvSekkFK+M6QTbWn3lfN9UxLfhPoivKTKBWMS9mitLoQ9
	qiDOio2D65JFgyzgCDLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbO6G-00000002Wl7-3JVE;
	Tue, 06 Aug 2024 17:35:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbO5i-00000002Wdm-2yVo;
	Tue, 06 Aug 2024 17:35:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F2EE4610A1;
	Tue,  6 Aug 2024 17:35:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CBBBC4AF0E;
	Tue,  6 Aug 2024 17:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722965721;
	bh=sbFiD0UTPz3Xhgo7u+pcibnbth29PoEv4oSZWuoSTH0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AraJaUcKzqP3jBmRFw6xv4VnTrnEVv1aMvKj0UsGZVEII5DF5HuwCnr7knf3XnQns
	 rGNx6IM+xauv2tAmu3bgXTiYlquGu3Rlgl1Aug6P7gqabxD/ZdnN1xxJewPvM4FjC5
	 J7M15LPoteevpcLEvidwur5kSOEmiHcEKRXZAkyxqsOlV1e6syhXlwJ3zMjU20Av48
	 LswP5i2igU9+OlMAaDpL0rOMJUrMFDv3RwF/UrbSkMNiqBskdCE5w0geB6Y7r2g+vG
	 aOcB8T5te3zffbvfnUKz57/V6bXG786oDFRNVZPrw8GdMQq2QIh2VS6GJBI2HdsQqd
	 bq1OZqSiR54pQ==
Date: Tue, 6 Aug 2024 11:35:20 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
	linux-kernel@vger.kernel.org, David Wu <david.wu@rock-chips.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jose Abreu <joabreu@synopsys.com>,
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] dt-bindings: net: Add rk3576 dwmac bindings
Message-ID: <172296571928.1850493.16580227879384063021.robh@kernel.org>
References: <20240802173918.301668-1-detlev.casanova@collabora.com>
 <20240802173918.301668-3-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240802173918.301668-3-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_103522_833733_9FA1048B 
X-CRM114-Status: UNSURE (   9.19  )
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


On Fri, 02 Aug 2024 13:38:03 -0400, Detlev Casanova wrote:
> Add a rockchip,rk3576-gmac compatible for supporting the 2 gmac
> devices on the rk3576.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
