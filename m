Return-Path: <SRS0=VuRY=NW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4644BC432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 11:08:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E271260249
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 11:08:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E271260249
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kynesim.co.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jx2MQzN5MBLyWfpZe3oR3DqhmoFs+h5m1K8Md73zMpc=; b=O9Vm481ET3E5L7
	xXxdWMqEfBZa1oRQFVegCW2kEyQu5nTU2UJS6WnZK625XmkfWJmx3K3RfDMr1GCK33lOhSgQyJ8k0
	u7M9noVB2JWtQ0VywGwgCp+B2RlA0gl/XpXNzK+QuIjN2V65Bt+/vXRjZ7OnOQobmYzJJfWZpphE7
	1K8hAg4yqk+HWLp1WKv9JcQtWaJVa01g/lcg2oHF0HXoo2J5qg79qUIO63Hfg0fAU+qotvuqltUAX
	tsA6fYuADj4zYSnYUyGZ1xZs7BKpJbh0/rAZzaXzw5VmF9dMaCnNEf867/fNFelzN7tulbQJ5O1qH
	Acs1lLgVGIAxsNBb50zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mL1cw-0026jW-I5; Tue, 31 Aug 2021 11:08:26 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mL1cj-0026hO-BQ
 for linux-rockchip@lists.infradead.org; Tue, 31 Aug 2021 11:08:14 +0000
Received: by mail-wr1-x42a.google.com with SMTP id x6so18786539wrv.13
 for <linux-rockchip@lists.infradead.org>; Tue, 31 Aug 2021 04:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kynesim-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:references:in-reply-to
 :user-agent:mime-version:content-transfer-encoding;
 bh=nMRTUAlq+ptR/ckeEvsJ2OY0SDOy9cpq2/OlFIgm97M=;
 b=qsp4c+wN0W3QAqKyb6QGXEW9nPLEAOkKU7RtwLh9zvb06ptChOpvOqSO9lwu3CMekq
 oLBc39IdmcReLrYv8oLeznfogTcijoYweoSDWI7AtjHeE4/v1QVgXZM3SwMEJk8/mpQw
 bcBe1cIi+0ja+JpsWOuO8fbVQXb/Z+zjqrRZ1sM8dHxR7+XtWNBMd45/zAzImTov8mX6
 pgmL2p1g9EE2ariy0meoI+5caNaawlG4IY3RDTXjYzL9zQV48ENYGCe7TDIg50JxbIH2
 M8N8EOcSsT4yA2WzsSwmFGYBDfuuX2FcgeTjjvJ9z3Tbh7e5JoacSRoI/h6pym4CZlfq
 jBUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:references
 :in-reply-to:user-agent:mime-version:content-transfer-encoding;
 bh=nMRTUAlq+ptR/ckeEvsJ2OY0SDOy9cpq2/OlFIgm97M=;
 b=UAZhfWVWasIUQAn0mBL28pA5MPKrp+KUttdWfs9RNcQ9QdHLoWMUS3OYAO4iR1K/MD
 rMGEUjY/bp+rcGJU9xdQcykpNlzdjJe2N/V3OMN0TU83jCPBbUQpHvtfI6WUnoc9uPKK
 EwdEeiLDgKWtAq44DHGMAThzSULG2suODCIL+uDXU+WRh0FWaMQa8t0NLczqydikQqZ5
 izqFhwQ8tmp1obeAb0Qn0YE/5kEoe6ttUaH4W6RlvNQcCVVBImSZ2ncPUwB9PXl+9h72
 WbImz+RNr4KK7+gUbhdF0SB7CNl5tIssuIjWUVye/kGzScs29jAsd8+p6RkjSiPfgZ7P
 KY5A==
X-Gm-Message-State: AOAM5329JpWfCr/pmcbvrCWL6Dm9nebt2rGRSoRJnbswOtHmGl26nLNC
 rW4Izcmy19ubKQLZi1l+TD609A==
X-Google-Smtp-Source: ABdhPJzXIL3GbSqZDI1inNtMGsjeB9vVKemBahtgKBwRGcrh9KL0DkvZHGv4C8PCZdFxPLuHoEjlgg==
X-Received: by 2002:a5d:6785:: with SMTP id v5mr30524945wru.261.1630408087281; 
 Tue, 31 Aug 2021 04:08:07 -0700 (PDT)
Received: from CTHALPA.outer.uphall.net
 (cpc1-cmbg20-2-0-cust759.5-4.cable.virginm.net. [86.21.218.248])
 by smtp.gmail.com with ESMTPSA id s12sm18338402wru.41.2021.08.31.04.08.06
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Tue, 31 Aug 2021 04:08:06 -0700 (PDT)
From: John Cox <jc@kynesim.co.uk>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@gmail.com, hverkuil-cisco@xs4all.nl,
 ezequiel@vanguardiasur.com.ar, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH 1/2] media: hevc: Remove RPS named flags
Date: Tue, 31 Aug 2021 12:08:06 +0100
Message-ID: <4g2sigpsttf80t72c7spdqqjvvijnths2d@4ax.com>
References: <20210831094900.203283-1-benjamin.gaignard@collabora.com>
 <20210831094900.203283-2-benjamin.gaignard@collabora.com>
In-Reply-To: <20210831094900.203283-2-benjamin.gaignard@collabora.com>
User-Agent: ForteAgent/8.00.32.1272
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_040813_425727_18D5C057 
X-CRM114-Status: GOOD (  21.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

>Marking a picture as long-term reference is valid for DPB but not for RPS.
>Change flag name to match with it description in HEVC spec chapiter
>"8.3.2 Decoding process for reference picture set".
>Remove the other unused RPS flags.
>
>Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>---
> Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst | 6 ++----
> drivers/staging/media/hantro/hantro_g2_hevc_dec.c         | 2 +-
> drivers/staging/media/sunxi/cedrus/cedrus_h265.c          | 2 +-
> include/media/hevc-ctrls.h                                | 4 +---
> 4 files changed, 5 insertions(+), 9 deletions(-)
>
>diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
>index 3865acb9e0fd..eff33c511090 100644
>--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
>+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
>@@ -3138,10 +3138,8 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
> 	:c:type:`timeval` in struct :c:type:`v4l2_buffer` to a __u64.
>     * - __u8
>       - ``rps``
>-      - The reference set for the reference frame
>-        (V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_BEFORE,
>-        V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_AFTER or
>-        V4L2_HEVC_DPB_ENTRY_RPS_LT_CURR)
>+      - Long term flag for the reference frame
>+        (V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE)
>     * - __u8
>       - ``field_pic``
>       - Whether the reference is a field picture or a frame.

If you are going to remove all the RPS values except for Long Term
wouldn't it be better to rename the field too, either to "flags" or a
bool "is_long_term"?  If we have a field called RPS it really should be
able to have a value for any of the 5 valid Reference Picture Sets that
a DPB entry can belong to.

As a side note, it is important to my code that the DPB array contains
all the DPB entries not just the ones that are in use in this frame.  I
need them so I can track which frames have left the DPB so I can
reuse/free the MV tables associated with them (yes I could keep one for
every entry in the capture Q but that is generally wasteful on memory
and the Pi is often memory constrained). So maybe update the docn on DPB
to make this explicit please? (I suspect that current code does this
anyway as it is generally easier to do than to not.)

John Cox

>diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
>index 9ea864ca5625..be46b3c28b17 100644
>--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
>+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
>@@ -503,7 +503,7 @@ static int set_ref(struct hantro_ctx *ctx)
> 		compress_luma_addr = luma_addr + compress_luma_offset;
> 		compress_chroma_addr = luma_addr + compress_chroma_offset;
> 
>-		if (dpb[i].rps == V4L2_HEVC_DPB_ENTRY_RPS_LT_CURR)
>+		if (dpb[i].rps == V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE)
> 			dpb_longterm_e |= BIT(V4L2_HEVC_DPB_ENTRIES_NUM_MAX - 1 - i);
> 
> 		/*
>diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
>index ef0311a16d01..6086cc35e8cc 100644
>--- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
>+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
>@@ -169,7 +169,7 @@ static void cedrus_h265_ref_pic_list_write(struct cedrus_dev *dev,
> 		unsigned int index = list[i];
> 		u8 value = list[i];
> 
>-		if (dpb[index].rps == V4L2_HEVC_DPB_ENTRY_RPS_LT_CURR)
>+		if (dpb[index].rps == V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE)
> 			value |= VE_DEC_H265_SRAM_REF_PIC_LIST_LT_REF;
> 
> 		/* Each SRAM word gathers up to 4 references. */
>diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
>index ef63bc205756..f587448ef495 100644
>--- a/include/media/hevc-ctrls.h
>+++ b/include/media/hevc-ctrls.h
>@@ -127,9 +127,7 @@ struct v4l2_ctrl_hevc_pps {
> 	__u64	flags;
> };
> 
>-#define V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_BEFORE	0x01
>-#define V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_AFTER	0x02
>-#define V4L2_HEVC_DPB_ENTRY_RPS_LT_CURR		0x03
>+#define V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE	0x01
> 
> #define V4L2_HEVC_DPB_ENTRIES_NUM_MAX		16
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
