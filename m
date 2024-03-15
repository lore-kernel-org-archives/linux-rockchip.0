Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C55AC54E67
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 19:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KRkmhR+8T3JLaCgBfKpdVmJ8C55HVUfh8GdCGeG5dyo=; b=X6FHTgvSy8ZbwJ+XrlnD4P9BPN
	Pva5BdyhfshMVLR7s97v0jjXySBDsMK9cnqztJg/aNPZFWO/E0k1fS6q4EPYP2kpH9t8OuhzqFAfx
	COJSMPZXQ+em47vZjnT7gMifx3A0gw6i2yFrweyptxiJti1ovqGa0QO2xca5Np3klfBqToq/xAmng
	iOK/ZgQIeIwzO8Hd7lbCcxK/l8TADBqdFfokYfrF6tC5SwfIYmmYfys6tNzZAQVeCz/Pyr4m86O/V
	/xy7shum+woAzUi496ntTZ1YnKm3xnmveWCy3SA+QthGjSHjgV2gFB450uXzAaSCpFYEV196hfQTL
	L2FRGDGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlCqv-00000001GQy-1MwK;
	Fri, 15 Mar 2024 19:04:25 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlCqm-00000001GM5-1zER;
	Fri, 15 Mar 2024 19:04:23 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1710529453;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/QeVTt7EEVUu2Ft0Iu4mZyhzwsN4UDGTEp8s8bgI6eg=;
	b=RKeEk8Q9e0N+4Vg6+DMe4lGtWMuHetNupWAEWrPFY4DT39ESUMcJnG06KeHUCIo9aiz+Vv
	Lbj7zoZg067upCQsuWGf8gfD9I2AADS090Gk6sgH9yWXcDcgokA6wstStnP8uCpLtKBkWj
	/tdC8PIx5ZXsCANqxL9G35MaDuLvhxdIQG9POLYUG17c5ORxXDHN6MPCPLEhljm7FdjZhD
	Ud9EiXHqF+aTlKPVnis72eqiVsBVh4LPPdhpRcVQcaLaSOsuks8Hz0C6SjJzkL4YpcXGFQ
	eIoPRufPoXUe7g0RNZccV1G+RHniso19OSYthlQ9ITUac4Smh0mQPCKUd90RsQ==
Date: Fri, 15 Mar 2024 20:04:11 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Lorenz Brun
 <lorenz@brun.one>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add &gmac2phy in rk3328-rock64
In-Reply-To: <PN3PR01MB10135290B74FD411720E431989A282@PN3PR01MB10135.INDPRD01.PROD.OUTLOOK.COM>
References: <20240315084018.2200581-1-himanshu.bhavani@siliconsignals.io>
 <96a53f8560b3563328eaf7b9d6f63d87@manjaro.org>
 <PN3PR01MB10135290B74FD411720E431989A282@PN3PR01MB10135.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <0f674cf37d01e1a6651068b0402e766c@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_120417_011356_A91A41BA 
X-CRM114-Status: GOOD (  11.82  )
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

On 2024-03-15 16:02, Himanshu Bhavani wrote:
>> Unfortunately, this isn't an acceptable change to the Rock64 dts file.
>> Yes, there's the second built-in Ethernet interface in the RK3328 SoC,
>> but the Rock64 layout doesn't expose it as a separate physical network
>> interface, i.e. it isn't available as a port.
> 
> I was wondering if the Rock64 lacks a port.
> According to this link: https://pine64.org/devices/rock64/,
> it seems that there is a physical network interface available on the 
> sbc.

As I already described in my previous response, there's another Ethernet
interface in the RK3328 SoC, which the Rock64 is based on, but there's 
no
second Ethernet port on the actual printed circuit board.  That's simply
how the Rock64 was designed and manufactured.

>> Such a change would be fine to be applied to the dts by hand, by 
>> someone
>> who actually adds a second physical network port to their Rock64.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
