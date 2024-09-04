Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C3FDCA0ED3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 14:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5wu4o11Hn69YZAejVzMmS1QuU0pp/iiD/bXMAP48hg=; b=yn7fXKpt7ZLflL
	xDm+gohyCwpU9Aznld57K4IwdLkjWk4mGXhw7eQBDuY/FbcYcEQxwCTbQxvI5i3EI/pyYvj8b/Cfs
	xaxExS0qxdCc+9fROqZEYfDG29BxpxKM7pUAgcpo+q2BZ1fnpJXXjqMRSsp02Q1fD2PZjEIRuycLH
	ygfjrVjlkKuUTqkR6jHY/bcrgs/1I3bgsrGzWKp3MpcAAbl5UQHzBlkN1kslbna8LWMPX5KnuxJ8y
	YhCvwY1idqyZmGGeJy/WzLJZ5SsN0uq+PZ7+Fp3aExWVy7+ECyKq8fSFpj149aHmAoHlaHkJDPPdz
	plLrXyGTbTCqgZrR16RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqpO-00000004jpZ-2MVB;
	Wed, 04 Sep 2024 14:17:46 +0000
Received: from omta40.uswest2.a.cloudfilter.net ([35.89.44.39])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqpK-00000004jai-3lbj
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 14:17:45 +0000
Received: from eig-obgw-5001a.ext.cloudfilter.net ([10.0.29.139])
	by cmsmtp with ESMTPS
	id lhBcsdomwvH7llqp3slqWG; Wed, 04 Sep 2024 14:17:26 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lqp0sXGvZmqhilqp1sCI7s; Wed, 04 Sep 2024 14:17:24 +0000
X-Authority-Analysis: v=2.4 cv=NdEt1HD4 c=1 sm=1 tr=0 ts=66d86bf4
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=HSDmG33uGC2uzMr5-wEA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=u3Lk9sQSz+EbH5buYhkOPLBvuDmn7/9B/u1wslum9Xo=; b=LyC6MZ9HIBeeUjoxWaMQaJ/s2A
	Rs33Marh1EyfTCuYxcNDjhXsCov2NlkItKJLbyAGDWD+XlCQGSWoOT70hhEPfENiBTWReCt1VwEsv
	idot4CKai9OaD9wzYZdzwcpFTqXsQAQNAONYIwgKJ7hl7MTHpPvYbzti9siDc9oFNvQ4INZIL5DJb
	9XLULsPYfcbhITbSYMUkuNOas+kiGbUuiaQiJ8vk4uTaUH8ZrOZD8dl9U81f++goSdUwQrdkJ7J1m
	euOR+BFjjWBwM9K2zit4d8KFK912LZJEBIVi3q7phz7lsTsEEwT2nQS9G9JL5hsh6nc0Km1nSkPCh
	fv37CPoQ==;
Received: from [122.165.245.213] (port=55132 helo=[192.168.1.106])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slqoy-003hhL-2T;
	Wed, 04 Sep 2024 19:47:20 +0530
Message-ID: <e86edfae-cdc8-475a-97fc-dab69a023761@linumiz.com>
Date: Wed, 4 Sep 2024 19:47:18 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/8] dt-bindings: rtc: microcrystal,rv3028: add
 clock-cells property
To: Rob Herring <robh@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
 <20240903105245.715899-6-karthikeyan@linumiz.com>
 <20240903144542.GA985263-robh@kernel.org>
Content-Language: en-US
From: karthikeyan <karthikeyan@linumiz.com>
In-Reply-To: <20240903144542.GA985263-robh@kernel.org>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1slqoy-003hhL-2T
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.106]) [122.165.245.213]:55132
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 3
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfFHzgO83F2KWjY9paq8mOrXvS/39RcfkGVcmaq3TOZX3nAejiVI1eWthI9FdBiWrvZSK6dyR2HwzxECPQPfGQNallVmdHJE9WIdQqOKu9a66SjcoZp3U
 YxWNYi/gpZZA4BlDo7iDuurXtIVUUEtQKdftRJYX2HDdCTi3TiBfFs1/79fn/OxYAmrUBU1SyOS/G74Yk8RBLISLZkBIZ/A4C/8Eazy/OlhTL0L5wSem8qEl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_071743_511491_CB150CC7 
X-CRM114-Status: UNSURE (   7.96  )
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

On 9/3/24 20:15, Rob Herring wrote:
> On Tue, Sep 03, 2024 at 04:22:42PM +0530, Karthikeyan Krishnasamy wrote:
>> consume clkout from rv3028 rtc which is able to provide
>> different clock frequency upon configuration
> 
> Please write complete sentences.
> 
> The subject is wrong. There is no such property 'clock-cells'.
I will updated in next version. Thanks.
> 
>>
>> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
>> ---
>>
>> Notes:
>>      v2:
>>      - fix commit message subject
>>
>>   Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml b/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml
>> index 5ade5dfad048..cda8ad7c1203 100644
>> --- a/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml
>> +++ b/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml
>> @@ -22,6 +22,9 @@ properties:
>>     interrupts:
>>       maxItems: 1
>>   
>> +  "#clock-cells":
>> +    const: 0
>> +
>>     trickle-resistor-ohms:
>>       enum:
>>         - 3000
>> -- 
>> 2.39.2
>>

Best regards,
Karthikeyan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
