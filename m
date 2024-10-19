Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2492BD3C905
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 09:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5mRthVKKa39Dh9vmbh6raHBR7fRM/JcXnATYvzOOvk=; b=tmVKk8OqiY9Etk
	IVqXPZENWmfyDx3Yi/m7MsAoEfoiO9jc8DExdSDzlKRkRLZ36yI5xTqAhqhl5JOpJN1jA9TJw0PnC
	tdHEQclCz5+Be0U8SvxYDCFdsQKi8erQ7YNnArZNLEUdVNr6pt21TQesOR07CsCh8B/trgXq/Gv9e
	LG5c027QF3HuZ6RZy1D+SRcA6MR/0OAbUswMdqYZqllEKyefipBNnJUbZygB9f6b6Xotv2UwAl50Y
	TWnSGtN/x97z1NXy9kp04un/fhtGrycGkTEr2azMk8j/VFA8rbue8mJ38Ebl4D9u2L7lkXBpJ7S1h
	gbHHYyqx0yXBgAkfq1/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t25gT-00000002yRx-0Qca;
	Sat, 19 Oct 2024 09:23:41 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t25ey-00000002yKm-1deS;
	Sat, 19 Oct 2024 09:22:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729329726;
	bh=ddx/wzHX3BBS9AnzKxxwJZVSrSQneUJZVZUhyLhbx0c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mBfmEjweJWeFSDGFz/tgFi9f2CaY0gRzttWfGLKQgxZG4VTqT+oRrU2FHkhaSnyAa
	 gbmk5TyxCgOX0EvKZIGstgBKwYYzq41EvofkiE/9oEeEYuUJuHtOEcwcTcaqrA6Q7O
	 afPN8Iqu2TVOvE5/b+5JNQdgrwu8/MDvuxKUoB7zHPQ3A79X8h39AtHXvEeoWZVdVy
	 qyH0uYbsa5ch18ur18X5xkmV+v6JiXm/GBWCvHw7LmbPo/2mmyOWf2VXOgaiOLZlnD
	 r202+GUiCqAw8GM+3NHd1/sYbVbMCLhTuZ2H43/cCD6fgGX97FY9cyrlYd2KRdN2W+
	 q4/EQX2Qob5zg==
Received: from [192.168.1.90] (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 014F817E11E2;
	Sat, 19 Oct 2024 11:22:05 +0200 (CEST)
Message-ID: <1313314d-5398-4ed1-ab54-f0dadc638103@collabora.com>
Date: Sat, 19 Oct 2024 12:22:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] arm64: dts: rockchip: Enable HDMI0 on rock-5b
To: FUKAUMI Naoki <naoki@radxa.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Luis de Arquer <ldearquer@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241019-rk3588-hdmi0-dt-v1-0-bd8f299feacd@collabora.com>
 <20241019-rk3588-hdmi0-dt-v1-2-bd8f299feacd@collabora.com>
 <5E49B36195743C7C+3eb032f1-fda6-4a61-bcaa-8ce34256cb51@radxa.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <5E49B36195743C7C+3eb032f1-fda6-4a61-bcaa-8ce34256cb51@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_022208_647207_B1FFF21A 
X-CRM114-Status: UNSURE (   8.19  )
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

On 10/19/24 4:41 AM, FUKAUMI Naoki wrote:
> Hi,
> 
> thank you very much for your work!
> 
> On 10/19/24 06:39, Cristian Ciocaltea wrote:
>> Add the necessary DT changes to enable HDMI0 on Rock 5B.
> 
> Rock 5B -> (Radxa) ROCK 5B
> 
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> 
> Tested-by: FUKAUMI Naoki <naoki@radxa.com>

Thanks for testing! Will send v2 with updated description.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
