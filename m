Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41BEBC4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Apr 2024 17:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=drKTjJOOsbjFaJ/WPMn82DQa9HAk+FhbzAXSHOczzGg=; b=U5BbqNJWfydz4fTLoX5rAPs4IU
	srSSmvcLEwa/+U19+LDnO/Fvf9SJiOTWyAHG/lf2KSGeEFhpko1DRQTUgf/XDX4ghyZHJEtj/fuTF
	7tcLtzS8OXeEOUhZ2xDr6lsD45al09HDkx/51XZ9u/vp3Jmba/dDELiaEPlcOgSjA9ldsZwwJNqFN
	24kxw6hJ4aaxlbUPGZ41RS9hW22dPebRhdeSir57b66vf3A86pWEXp1mGBVcKwcQMHiq/x9QxXR9l
	S6zZRoq1xV3F9fg4lyHzQbcyQf+RVT7/tv8l+9+I2VNwv+0NBSCw8JDuYILr3GSRHw1ChLQt6OGdd
	rDEI52gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryx4J-0000000EQ3d-2Qt0;
	Mon, 22 Apr 2024 17:03:03 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryx4E-0000000EQ0d-2JB5;
	Mon, 22 Apr 2024 17:03:00 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713805372;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Kk+naKJeaAsOPU+W2tz3dUKAlOqJJISxhd/6sq9KCdI=;
	b=mkD2MSnx4vbGIpB9wqMhdrXALJf3vlah/KtJ8GJPLQ43bgfG10uSDuD+/2CQE7mGTn9uCU
	PyemwCvvRIZhDkDijuA1AFZqqe469U1Ozi6QjfTnkE8dm/CsSQI/6GMXu58B2x74mn3/G4
	jiAv/UD+mTLz/LRHlI5uBYHKs7nuoSpexa8AWV6lU/7OUmGE1Kj6g/npsY9YyFQ+xlRd2d
	Dmmt2O6aStlgwrNOdbMEfoisYL8/XsU09KH7O/BUnuNuNcfKPK/5RRJnbn4tlCSxUZTu6i
	YiIScTwUoQbJ2z/C3slP1AG9lblxtauvfRpiaS9Oil1O40ODJmID8eBLkeR28A==
Date: Mon, 22 Apr 2024 19:02:50 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Rob Herring <robh@kernel.org>
Cc: amadeus@jmu.edu.cn, conor+dt@kernel.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions
 for Radxa boards
In-Reply-To: <171379340485.1139142.4385224897520028554.robh@kernel.org>
References: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
 <171379340485.1139142.4385224897520028554.robh@kernel.org>
Message-ID: <68920e1c33815df82f8638fbdd479dc1@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_100259_122092_F093ABD4 
X-CRM114-Status: UNSURE (   8.09  )
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

On 2024-04-22 16:32, Rob Herring wrote:
> On Thu, 18 Apr 2024 18:26:19 +0200, Dragan Simic wrote:
>> Correct the descriptions of a few Radxa boards, according to the 
>> up-to-date
>> documentation from Radxa and the detailed explanation from Naoki. [1]  
>> To sum
>> it up, the short naming, as specified by Radxa, is preferred.
>> 
>> [1] 
>> https://lore.kernel.org/linux-rockchip/B26C732A4DCEA9B3+282b8775-601b-4d4a-a513-4924b7940076@radxa.com/
>> 
>> Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>> ---
>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
