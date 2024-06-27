Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80BABC2BD09
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 10:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QONIyezae2hRO8EWnHVmhtG0JcazK8DR3SZSPFbS2i8=; b=CQBUeMTVceeIL+
	Nc2DwCEkogYdH1g35wNAGrsUeUd4APJ3/LsAS8IXvCZEPiJf8mKp0rO/m4IUrEQCa90ZnF/8CAjUf
	vNyzYDvlYE3YjhruFM/GkywEhps2x7bx9QlCMcEZvcTV+1ytMTSGWnDx6R7QRsz5neMnhbVxTGsrH
	4G14z1YXwfwIsdV/eV2BMs/JJFrTtEA7YsLNPMdMyZS4DXK4qwSf176N0DBpL5eL/G+vCnOgpeIP0
	c6lMTa3DKGm3rdwp2po5c21qdW1fWMW3iejAbKIWT/xgiyy5pyHOK9tF77eaP0in7W2R/tscQw2Wu
	+qY40PA+uygiJK9JPHEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMmHR-00000009vJF-0ZvY;
	Thu, 27 Jun 2024 10:23:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMmHO-00000009vII-3cvd
	for linux-rockchip@bombadil.infradead.org;
	Thu, 27 Jun 2024 10:23:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=t84FHH9Qz2oscsWXd253HB7jbbaRf6bF8zfUqJ67FIU=; b=Xhkv8NOyZoVL7PV6C64gH0KDe6
	JCulYanqY1OBZltsCwGj/8x5k6IsGtzWMJZDwzN6njsBu6/3Eeaj1TdnTv3smVZIII9qqQ2PGaeUU
	2CbZFPQ6FRpxd7wHaMSVg2uGn+6bDePYJl5MbEZCnUXv3weKgCXinOGjfsqiWE2DCNYySsGlyJV85
	fOG8exMv3TZnP9ZZky2H1BRgccSiiA3sgIAPkmpTMI5UlPgXy4sdTrf65sGe9u0Ws11saAR5WtV0s
	i6SdW2jwSkHMopsBT1GxJ5xL0jN5l6SbKgApY9ensjL5bGC4fYqbROC6fqg997+ckJuqTL8lrz4ie
	q1GOjyHw==;
Received: from smtp.forwardemail.net ([149.28.215.223])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMlcS-00000008oMN-01ML
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Jun 2024 09:42:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1719481174;
 bh=t84FHH9Qz2oscsWXd253HB7jbbaRf6bF8zfUqJ67FIU=;
 b=W0FT3aMa2lrw4vE48d5nRgT2oomXuhZveVPMuMb6bPxOLENPJQF1KyFmsMD6tgZD114M1zrg5
 5vs+v76Q8Vjbg1JOz2iFOQCVWjQk9nNR8d7uo/oavDQUTTYrt6VygU4pfAkGLiqgAoY+1Wx14EI
 gpwLaa0IlK/JSdRU7GtHwO96QrRSMmToMP2uPtRBfZJjm29mCK1T++0IWSnHc95Op7zpMpOKcpm
 xy9fn/U45R5QPrR2eaJHPtGEnXzUtaqCXjfA99iqrJR+e/BDWjze1HGJx8TzKMdrDMGk8JlqqLk
 I+oIP2rZv8blW3Z/zlDCEQVApbUqawtBERQ9w4N6UMnA==
Message-ID: <e72fb6fb-4dcd-4fb4-9d44-d8de3c5ffe30@kwiboo.se>
Date: Thu, 27 Jun 2024 11:39:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 08/10] media: rkvdec: Add image format concept
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, Alex Bee
 <knaerzche@gmail.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, Christopher Obbard
 <chris.obbard@collabora.com>, Detlev Casanova
 <detlev.casanova@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20240618194647.742037-1-jonas@kwiboo.se>
 <20240618194647.742037-9-jonas@kwiboo.se>
 <f7e4b0be-fe09-4db8-b081-21c46c0d836f@moroto.mountain>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <f7e4b0be-fe09-4db8-b081-21c46c0d836f@moroto.mountain>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 667d33569aa1b906e1d3e383
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_104113_491197_80099DA5 
X-CRM114-Status: GOOD (  12.92  )
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

Hi Dan,

On 2024-06-19 09:21, Dan Carpenter wrote:
> On Tue, Jun 18, 2024 at 07:46:32PM +0000, Jonas Karlman wrote:
>> +static u32 rkvdec_enum_decoded_fmt(struct rkvdec_ctx *ctx, int index,
>> +				   enum rkvdec_image_fmt image_fmt)
>>  {
>>  	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
>> +	unsigned int i, j;
>>  
>>  	if (WARN_ON(!desc))
>>  		return 0;
>>  
>> -	if (index >= desc->num_decoded_fmts)
>> -		return 0;
>> +	for (i = 0, j = 0; i < desc->num_decoded_fmts; i++) {
>> +		if (rkvdec_image_fmt_match(desc->decoded_fmts[i].image_fmt,
>> +					   image_fmt) &&
>> +		    index == j++)
> 
> I really don't care for this j++ which is tucked inside a condition.
> 
>> +			return desc->decoded_fmts[i].fourcc;
>> +	}
> 
> 	int fmt_idx = -1;
> 	unsigned int i;
> 
> 	for (i = 0, i < desc->num_decoded_fmts; i++) {
> 		if (!rkvdec_image_fmt_match(desc->decoded_fmts[i].image_fmt,
> 					    image_fmt))
> 			continue;
> 		fmt_idx++;
> 		if (index == fmt_idx)
> 			return desc->decoded_fmts[i].fourcc;
> 	}
> 
> 	return 0;
> 
>>  
>> -	return desc->decoded_fmts[index];
>> +	return 0;
>>  }
> 
> Don't resend if this is the only issue, but if you do resend could you
> get rid of the j++?

Thanks, I will send a v6 later today/tomorrow and will include your
proposed change.

Regards,
Jonas

> 
> regards,
> dan carpenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
