Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A471C47422
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 20:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qjcajp6g0evTehBgUVqhG4MQWQ8kE9y5IGOxA68l2o8=; b=EFQzCET0nb0EIM
	sYKkXJ/Re59eGL52aK8ojkw1aMeXDS1l4hiR0kkQ23y6EP31ws+/xXUzm4HTvK7409vff4/gYL4Dj
	JYH7z3UNfNjhdPxg2VARPJ2krxokplb7kvcHS8vJL7o/s4TosnEcCKQ3qnw5btAY73ZUAyjvOHKPZ
	rWBPj4hLKtFcNBD5SbDG5RUJrefe7SKU1gRy4ewDXnAFQ8Wmul7Fh+0r9fU9UHSHA70qWh2ci7KBB
	sdtV3oMzKI9WLtXqZhINZoyit7rkWNv2Usiodu7OGCcRpfdzGIY6DcOBzlzkpxcASuf3M8slLYnQt
	P2E7lPd+m2wmWKoxps+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT5u8-00000001gnL-3vXe;
	Thu, 25 Jan 2024 20:00:52 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT5u3-00000001ghf-2GKE;
	Thu, 25 Jan 2024 20:00:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706212844;
	bh=wQCJG8XrSkewX3nDASD2zqENpUoEaBxBVuCdAZFcB4E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eVAl53H7crEget/5/q9d3K0nzEEORZfv5ZccKS0rAg3aVXWGufNsFCtKrNGInyf4I
	 iPOkMnufxDcv9yBv+HozfhXRSc2CFymDXpVqRwlBTq1BfHvDhWCv7z/CT+nkDvAt8a
	 ULA9iFLRojCcKIJqx2I0ItmzcLy4/LZnt/TVbU8+pyIFNX9jTXUqVQ4L48njnDDKQi
	 D3S8RUNQdpNNjwZLxsJ+FulKyKot3QkyQlTy/LvAqaSh9DNxVb+P7/3rY7X43lLPNr
	 RflTB+xeTYwGNnzH3okkbHMIo3hI4mhLzxcAKL+JdSv22If2HgW+otjxUiiTqOv35U
	 +0BTy5d8j8Zpw==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 96C193782021;
	Thu, 25 Jan 2024 20:00:43 +0000 (UTC)
Message-ID: <32ea6c65-212b-489b-a559-d49f9f7eeadf@collabora.com>
Date: Thu, 25 Jan 2024 22:00:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH 0/3] Add support for RK3588 HDMI/DP Combo PHY
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Algea Cao <algea.cao@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Andy Yan <andy.yan@rock-chips.com>, Vinod Koul <vkoul@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
 <170621254052.1850726.5970136297823229036.b4-ty@sntech.de>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <170621254052.1850726.5970136297823229036.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_120047_842414_B0757C00 
X-CRM114-Status: UNSURE (   9.63  )
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

On 1/25/24 21:56, Heiko Stuebner wrote:
> On Fri, 19 Jan 2024 21:38:00 +0200, Cristian Ciocaltea wrote:
>> Add driver and bindings to support the Rockchip HDMI/eDP TX Combo PHY
>> found on RK3588 SoC.
>>
>> The PHY is based on a Samsung IP block and supports HDMI 2.1 TMDS, FRL
>> and eDP links.
>>
>> The HDMI link has been tested on Rock 5B and EVB1 boards.
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/3] dt-bindings: soc: rockchip: Add rk3588 hdptxphy syscon
>       commit: 738227ab42fe0c6047f932aef11b9fd647d203f9
> 
> I've grabbed this one already, to keep my GRFs together :-)

Great, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
