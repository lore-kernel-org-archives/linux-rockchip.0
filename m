Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BBADCCD184
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Sep 2024 07:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4p6+97horLEOvglfTg5UpIwjvuTRpB8qAC2NDhkAENM=; b=Z4owLUcf8TCjzm
	L+Vp1FdxbZ0VIxiCbmF0Us0UZ1HC+b1ZRy8xN5Ha3LO279YdMCNwYbaHUjrEisNpYZpjCHPQb6Yqe
	wNamYQGqLsJbzczH1LM1d5wGLRz80wW6KD22robzRWHKeTvYNeuC+ku7mQF55hyBgqZtwxc2QzWAE
	ziKweyU7Xw/QTpuznN2HkokFT+9IRbb+kO0v6fz+nxmIap3q7yQROG8bTiCkHFZ2zyH/tzzfA6ERs
	/XM2LV+Ph8XU1R1ZEIdQ9g1/p49QKarsaM8D4Fp+4KrO6PthM+6g7/0/sfJGhwSDD7qC4upAjSfPH
	dl9YHwxy5NeS7KH/453g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqp9U-00000007f7n-11Jh;
	Wed, 18 Sep 2024 07:31:04 +0000
Received: from omta38.uswest2.a.cloudfilter.net ([35.89.44.37])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqp8P-00000007ezf-2r4a
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Sep 2024 07:29:59 +0000
Received: from eig-obgw-6007a.ext.cloudfilter.net ([10.0.30.247])
	by cmsmtp with ESMTPS
	id qgGbsY3ViumtXqp86s8S8H; Wed, 18 Sep 2024 07:29:38 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id qp82sZ1igzsYxqp83sPcgO; Wed, 18 Sep 2024 07:29:36 +0000
X-Authority-Analysis: v=2.4 cv=NPHT+V6g c=1 sm=1 tr=0 ts=66ea8160
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=EfumUPoKJa0OZNXMQWIA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Bsh0+YTIBF2g9B4a29qrB1FFLWx62R+OsNpok7/VG0c=; b=M1RuQaED7/rSKCPTvoomTTe3wM
	0SbdHGTITSV/ErpEZsSl0iLV0Bxw1WXMQyEAqxMQbzDJ6j8dryEQOirTTkBgI/iDXn0YxHpRSUo2V
	41Jii4EIjhpW+xZOkEGb23l8aUnlGP3iCCnnaIZ0eeVI9VA1rxs8WpT1VeFtx0v4gA3TKybazWz0S
	TI/4PkOcsTfY5TjQ8s/8hDcYCwLKdACetM7I0iM/64KH+QQiEresGITqiEd7NPhkNMPppXNuV78Qs
	Q/Ug9bMheh0ZexztgAIed/Jv84tsqKgY68PURgvsFlyvS0CmjJlUePqb7NTGA3mzgTR+6+TLlWRPT
	s/BA7krg==;
Received: from [122.165.245.213] (port=51864 helo=[192.168.1.106])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1sqp80-0028P1-1L;
	Wed, 18 Sep 2024 12:59:32 +0530
Message-ID: <ddca4051-0e83-4d39-8654-12210ffa5685@linumiz.com>
Date: Wed, 18 Sep 2024 12:59:28 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] dt-bindings: watchdog: rockchip: Add
 rockchip,rv1126-wdt string
To: Heiko Stuebner <heiko@sntech.de>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, alexandre.belloni@bootlin.com, wim@linux-watchdog.org,
 linux@roeck-us.net
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
 <20240912142451.2952633-2-karthikeyan@linumiz.com> <2206048.Mh6RI2rZIc@phil>
Content-Language: en-US
From: karthikeyan <karthikeyan@linumiz.com>
In-Reply-To: <2206048.Mh6RI2rZIc@phil>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1sqp80-0028P1-1L
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.106]) [122.165.245.213]:51864
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 4
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfH+yLVWCg1/jxzVC3oJ4hoEOx0d40VimY2uTMf3hmw7s1G0CxaRG8re5Vm4nu702oxgxjOV6AWF1WSxDL8oSBIAKyIlc4PsRb+pjrlUk0ca1an32Wjpy
 i2I5kRfy3w7zRvoadBYX2srfO6bBwk+IokzFHA7W38cNXYEIDoNKqeo9E4jt/Zi0/8XjERHshxy9b1Xs/oSJScp3ki1PptsU0SpqVXqFSY0FYSgE91Sbbgcs
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_002957_758598_B785238F 
X-CRM114-Status: GOOD (  11.25  )
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



On 9/18/24 04:46, Heiko Stuebner wrote:
> Hey,
> 
> Am Donnerstag, 12. September 2024, 16:24:46 CEST schrieb Karthikeyan Krishnasamy:
>> Add rockchip,rv1126-wdt compatible string.
>>
>> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
> 
> I think this patch misses some recipients because neither
> the watchdog maintainers nor the watchdog list is included.
> 
> We'll need for them to at least Ack this patch, so they'll
> need to be included. Please check your scripts/get_maintainer.pl
> call
> 
> 
> Thanks
> Heiko
> 
Apologies for missing them. Adding them in this reply mail.
>> ---
>>
>> Notes:
>>      v3:
>>      - add watchdog compatible string
>>
>>   Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
>> index c7aab0418a32..bccd27a1e470 100644
>> --- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
>> +++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
>> @@ -31,6 +31,7 @@ properties:
>>                 - rockchip,rk3568-wdt
>>                 - rockchip,rk3588-wdt
>>                 - rockchip,rv1108-wdt
>> +              - rockchip,rv1126-wdt
>>             - const: snps,dw-wdt
>>   
>>     reg:
>>
> 
> 
> 
> 

Best Regards,
Karthikeyan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
