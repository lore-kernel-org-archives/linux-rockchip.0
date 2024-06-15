Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 670DCC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 22:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fyRHssNdtd1vZlSqM2kqQWRQgU62Amj9aiL0OtSkhQM=; b=IBLu5pMIkUHDvK
	5NVeosoO/HciTyhh8cKQfFyTHVhbukXd2ZksLrTEHkxCknPTtZW1CEvWrU8Mgjsm5ArWJOn2FWICN
	bwBKq3EHtkpPiaIqWegam4ZRFqNyHuRNQGo8cZh+I8aZNmAMKsWo6fxYhFJcVmGMSScE+pAyxJb5B
	OzCNTgY4j0SU0fdtCTCxQcBxKEemmORQTF8bF28H/cZErY3aS0wb+qCD9JM3dk+fqQT/rGYrWeu8k
	rRp9SpdYdZS1korLHn64Z2tHsYIKi7vhSTHV7E3gSIjOyUoK1w5IbFE+dWnTZhRE4z+b1YJev31mv
	nzNixetY7+GJ1brAnhuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIbpi-00000006Coc-1Guh;
	Sat, 15 Jun 2024 22:25:14 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIbpf-00000006Cnh-020o;
	Sat, 15 Jun 2024 22:25:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718490305;
	bh=DF0mGyVb2ch10JLEOTK+vaR3v2RXWZJObNDqqoXwVpM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GZ8gRDmDUEff4jpkGY7Qy7Gfmm2/4xB90nA7YAOZpcj+v7T3oASQLLv5JulrqPXIt
	 EGkgp02QzHjkbe7uYrVMYVz79vnpZXG281NpHyFknU3c2ckzfCDWLSDwMX2IwwbfPL
	 A59jfWVuQeAYMpUB+h/vpNc/RLUfAW0EPFdLtSTf0g4KYaL5Ctw6x7+o11Y38SFyt3
	 MBBlUzqMcLdh/ojyBWau4DubLtSOEq7Qa7hX8AiwJ4V5g+p5Jaal6I1OZ0HOMAW2yn
	 RX9ukhSRfVDQhi0F6+YqBirSgplj+w+J5gURKb1yJ+2hpwvTbhzadwcDLiu/4GPaAo
	 9A/Kr2V+9mf4Q==
Received: from [100.109.49.129] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B87663780575;
	Sat, 15 Jun 2024 22:25:03 +0000 (UTC)
Message-ID: <09db1c27-b802-4cf5-95f0-d08611a5cd74@collabora.com>
Date: Sun, 16 Jun 2024 01:24:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
To: Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>, Andy Yan
 <andy.yan@rock-chips.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-2-detlev.casanova@collabora.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <20240615015734.1612108-2-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_152511_180580_A6DCFCE1 
X-CRM114-Status: UNSURE (   5.34  )
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

On 6/15/24 04:56, Detlev Casanova wrote:
> +int a = sizeof(struct rkvdec2_rps);

Remove this

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
