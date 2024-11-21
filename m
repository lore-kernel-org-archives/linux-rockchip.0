Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E677D6E2A4
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Nov 2024 10:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=76mhKic1AWliDGSRplHNzdFsaM+moraDjQLfgMJAHSE=; b=zMIsbZ7POx6AzmwbUrsiN+KKhW
	o1SeHCqSsJHKeNgI9amxdAQGtHyTS3TZwc+IPboEuxHXgSWdOp5OWWKPPCz/2RT3l5Mq81Db8whyG
	u0ptAxTfA4z583KyC8O+dpaTbjWhlFBcYrRlV2MVO0aExtHr5wa3yeYUv1elPmQD22bi2LtJFTzaV
	Xu6yzB20dQ+GXKtuDtC+aDqOuOuPc8eis1s2aAdnlawkeFZbg4OwreHzfPbO597lXsFj7bgLSGiM+
	ab4kkwBFu+WzHwhxxJvCSKovpbDPo4un4VKLP0b2LTAxZhdnJZ1pTQxFJD44+zJ/b21PnqTRAL2lL
	9BZyHkWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tE49f-0000000HK4T-48Wp;
	Thu, 21 Nov 2024 10:11:19 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tE49e-0000000HK3Y-0v6f
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Nov 2024 10:11:19 +0000
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AL6ZhtZ001379;
	Thu, 21 Nov 2024 11:10:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	Pd6rBNZoxGrLvF9FQXRoGek58FWnqhqX5GnjHcs3NLk=; b=6vd8F/EnNyXjiTE4
	Kt/8PzXjQwodIPp7yu8Qh8X9qbzbGbVheYiTaL+VWQWDDMW63+wz4NVUaf44XZDP
	0uvVS8pwa7D/ZfB+y4XVmj24XG7YZcVC70AUfEn8sjoUy5TsD5JoiDzThmNP35lT
	Y5KRrrRQEuII6h+26WNWqcbsphCsY97aMtevxwNTj2N22dgmztMwluhcZGQJrBJv
	3rUQvHWOUPjQ1fZ07ItAAGC+Wgh542nkBZfS8dH90Jjc/Rxm0+Ntr+K2grWrG0nL
	DL62qCnU1+gp/wS2SL6ug56aWN/LroXHtsEHYhLqGheyqrIwNl2AhY0KAmcu6J5H
	b9fn5g==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 42xknwegxy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Nov 2024 11:10:56 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 7F86740044;
	Thu, 21 Nov 2024 11:09:15 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3856B266B17;
	Thu, 21 Nov 2024 11:08:13 +0100 (CET)
Received: from [10.48.86.208] (10.48.86.208) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Thu, 21 Nov
 2024 11:08:12 +0100
Message-ID: <2404c3d0-140c-4481-b45f-f762cce8ecf6@foss.st.com>
Date: Thu, 21 Nov 2024 11:08:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] media: uapi: add WebP uAPI
To: Diederik de Haas <didi.debian@cknow.org>,
        Mauro Carvalho Chehab
	<mchehab@kernel.org>,
        Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Hans Verkuil
	<hverkuil-cisco@xs4all.nl>,
        Fritz Koenig <frkoenig@chromium.org>,
        Sebastian
 Fricke <sebastian.fricke@collabora.com>,
        Daniel Almeida
	<daniel.almeida@collabora.com>,
        Andrzej Pietrasiewicz
	<andrzej.p@collabora.com>,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20241120110105.244413-1-hugues.fruchet@foss.st.com>
 <20241120110105.244413-2-hugues.fruchet@foss.st.com>
 <D5R4DD00Z0A4.3BHMO8E5IZ6CH@cknow.org>
Content-Language: en-US
From: Hugues FRUCHET <hugues.fruchet@foss.st.com>
In-Reply-To: <D5R4DD00Z0A4.3BHMO8E5IZ6CH@cknow.org>
X-Originating-IP: [10.48.86.208]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_021118_553267_B3360986 
X-CRM114-Status: GOOD (  14.27  )
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

Hi Diederik,

On 11/20/24 16:43, Diederik de Haas wrote:
> On Wed Nov 20, 2024 at 12:01 PM CET, Hugues Fruchet wrote:
>> This patch adds the WebP picture decoding kernel uAPI.
>>
>> This design is based on currently available VP8 API implementation and
>> aims to support the development of WebP stateless video codecs
>> on Linux.
>>
>> Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
>> ---
>>   Documentation/userspace-api/media/v4l/biblio.rst  |  9 +++++++++
>>   .../userspace-api/media/v4l/pixfmt-compressed.rst | 15 +++++++++++++++
>>   drivers/media/v4l2-core/v4l2-ioctl.c              |  1 +
>>   include/uapi/linux/videodev2.h                    |  1 +
>>   4 files changed, 26 insertions(+)
>>
>> ...
>>
>> diff --git a/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst b/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst
>> index 806ed73ac474..e664e70b0619 100644
>> --- a/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst
>> +++ b/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst
>> @@ -169,6 +169,21 @@ Compressed Formats
>>   	this pixel format. The output buffer must contain the appropriate number
>>   	of macroblocks to decode a full corresponding frame to the matching
>>   	capture buffer.
>> +    * .. _V4L2-PIX-FMT-WEBP-FRAME:
>> +
>> +      - ``V4L2_PIX_FMT_WEBP_FRAME``
>> +      - 'WEBP'
>> +      - WEBP VP8 parsed frame, excluding WEBP RIFF header, keeping only the VP8
>> +	bistream including the frame header, as extracted from the container.
> 
> s/bistream/bitstream/ ?

Thanks for noticing this typo, will fix in v3...

> 
>> +	This format is adapted for stateless video decoders that implement a
>> +	WEBP pipeline with the :ref:`stateless_decoder`.
>> +	Metadata associated with the frame to decode is required to be passed
>> +	through the ``V4L2_CID_STATELESS_VP8_FRAME`` control.
>> +	See the :ref:`associated Codec Control IDs <v4l2-codec-stateless-vp8>`.
>> +	Exactly one output and one capture buffer must be provided for use with
>> +	this pixel format. The output buffer must contain the appropriate number
>> +	of macroblocks to decode a full corresponding frame to the matching
>> +	capture buffer.
>>   
>>       * .. _V4L2-PIX-FMT-VP9:
>>   

BR,
Hugues.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
