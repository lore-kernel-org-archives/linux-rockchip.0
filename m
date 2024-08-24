Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EDBBC52D6F
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Aug 2024 12:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Oxsio/yhgs7/CGvRgq6H3quaSEGW/5T3SoslgHmjec=; b=UNhF5bKn+aeFMh
	HNEd5j4lwHWomPqBrpb3YAqdzm1FCRVxnjWtHadCLvjyb5vlWI6yOPVaZuJx2uNFO+rRXbx8sDuGY
	3tZPdZEovIINKjHJKaMdTA/SWKpK7sjS6RUDwIt+zxQgM8T1zdShG8RyW9Qd/w7HnaQTEdNtfPSG0
	EYvuWh0jTqw+rtAqKKiNc4WK8RP+B+F8K5JZxrQOW5P5/iha0rWpxFRnCar63fPuZgQi2BGFBY8Iq
	hpZzYwypdCIa2rqhEYdge3f6hMc4cXQhJoUSEBxLsGJnfxd4XsxAYPT7+MDpACiTxddtZDNy13VIp
	H9B6NPeJKQmCFJD2rAVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shqCy-00000002EBn-1XRz;
	Sat, 24 Aug 2024 12:49:32 +0000
Received: from omta036.useast.a.cloudfilter.net ([44.202.169.35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shqCB-00000002E68-0Yu1
	for linux-rockchip@lists.infradead.org;
	Sat, 24 Aug 2024 12:48:45 +0000
Received: from eig-obgw-6002a.ext.cloudfilter.net ([10.0.30.222])
	by cmsmtp with ESMTPS
	id hlRVshyD7iA19hqC9sEWWr; Sat, 24 Aug 2024 12:48:42 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id hqC5skPQDX56whqC6s4SZG; Sat, 24 Aug 2024 12:48:39 +0000
X-Authority-Analysis: v=2.4 cv=MY6nuI/f c=1 sm=1 tr=0 ts=66c9d6a7
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=yoJbH4e0A30A:10 a=vU9dKmh3AAAA:8 a=zVmcmtEpmNCJ3-i8KE8A:9
 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PgEJ1MFlTP+nG6w+9BD92NttiBo/Pn+yMOkzb6Ras/k=; b=RTn94c7PbLlXFP8xDZUnI8ke1u
	wwMvb4NRk9PW23Ee7AbcJobq6l36QLv42sUpKgDamsP852cMaOgKXsn0rqYcZGuTEtbn1fSJ9En/a
	5eSEjmPNmYFqntZjNm+/TwZFSjlcGurjJ4A3RDL2qt1tSh0d/s2eZZjwdR+VGsK1rZgQA1FxT1DoN
	ZFaq3k15L7FmP9pFvl/EVzOqHqXD1YpFH+eAMKtjEAx7AY9qGp1V7dTWnzvud+uStVGd2B79+OIrm
	tXmUdPjusE+1RnSnZgv0PfP+Lp+vHUyeMfV+BipWY/04PXN23IZPXDo9RoMAN5igbedDkxEFfT89k
	gaR4+URA==;
Received: from [122.165.245.213] (port=45826 helo=[192.168.1.106])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1shqC3-003ZFY-3D;
	Sat, 24 Aug 2024 18:18:36 +0530
Message-ID: <a5d4f421-5120-4421-944e-d39d67e482bb@linumiz.com>
Date: Sat, 24 Aug 2024 18:18:32 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] dt-bindings: arm: rockchip: Add Relfor Saib
To: Conor Dooley <conor@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 heiko@sntech.de, alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org
References: <20240823153528.3863993-1-karthikeyan@linumiz.com>
 <20240823153528.3863993-8-karthikeyan@linumiz.com>
 <20240823-lark-regime-0d3ab4215d69@spud>
Content-Language: en-US
From: karthikeyan <karthikeyan@linumiz.com>
In-Reply-To: <20240823-lark-regime-0d3ab4215d69@spud>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1shqC3-003ZFY-3D
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.106]) [122.165.245.213]:45826
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 4
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfE3l/ZpmlyxO9LDQ6Ha0iGOd36lg6wzb5BWWUHvJ+eJAdaBgTRp+X33rFDxSRIPL7pLYe4FtK2Kftg80vEzX91cTr0Xtt0gypN2sowzZwgjoqrBj4gSa
 n2CX2pWb0U8M1d28SEKLEPfvTIy/l8pLz781mUzpU+4bwX2y64XQTMDb67AS0qFSDB5sQXHUnTZBmU+Vm0q5xMC3xb6h1UO2NreSynStugqbv3u3zNxU518a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240824_054843_763747_3F69DFC5 
X-CRM114-Status: UNSURE (   9.44  )
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

On 8/23/24 21:51, Conor Dooley wrote:
> On Fri, Aug 23, 2024 at 09:05:27PM +0530, Karthikeyan Krishnasamy wrote:
>> Add devicetree binding documentation for Relfor Saib
>> board which uses Rockchip RV1109 SoC
>>
>> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
>> ---
>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index 1ef09fbfdfaf..29f7e09ae443 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -848,6 +848,12 @@ properties:
>>                 - radxa,zero-3w
>>             - const: rockchip,rk3566
>>   
>> +      - description: Relfor SAIB board
>> +        items:
>> +          - const: relfor,saib
>> +          - enum:
>> +              - rockchip,rv1109
> 
> This does not make sense to me. Why do you have an enum for the SoC
> model, implying that this SAIB board would have more than one possible
> SoC? I'd expect to see - const: rockvhip,rv1109
> 
There is an upcoming version of SAIB board based on Rockchip RV1103.
>> +
>>         - description: Rikomagic MK808 v1
>>           items:
>>             - const: rikomagic,mk808
>> -- 
>> 2.39.2
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
