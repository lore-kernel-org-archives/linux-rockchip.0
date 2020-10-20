Return-Path: <SRS0=P5PH=D3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30E83C433E7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 07:23:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1BDD02223C
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 07:23:02 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="yy9r4Ibo";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b="WXeDvMyf"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1BDD02223C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XDpaV01cNpYvQXHKSmkpKQDgOJEhuy9ct8bsQWNGzQk=; b=yy9r4IboiX2MZ2a0+64mKL412
	ZFmUPfGCx2NvflZ8xVfrKpWsHpNE/iVirweLsRCIzNTDoB0QLJ+5AmjNOabSnmoNxv78A7EkRf3zP
	yI/hvXXOI6KSQkmRRzcllTr24ZWBeyllsjtFEHhEt5oUBEHaWsBUJCUYhe9/PL7TAlw0jZJjyXxuW
	niw/y2knpfPZ3Hlqz6r4aVhBuXilU+1XTYxCGxfnMkJ32mPOQnjx2cOle4rDHudKIGAAAZIm2kmNF
	nlL8eEbr6FW6qrBVmeRX6skBvYoaQwqMGAui0rIkX3JVUIVAly4fGiTcJlZ/0TKP5DFbg17wzmBVq
	SglabwfUQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUlyw-0007eb-Kr; Tue, 20 Oct 2020 07:22:54 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUlyt-0007e3-Pm
 for linux-rockchip@lists.infradead.org; Tue, 20 Oct 2020 07:22:52 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id Ulygkj2DwghRkUlyjktHK0; Tue, 20 Oct 2020 09:22:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1603178564; bh=qZj+i6sOrwIRjc+3Z657jhOxwdEGuC6VCBy9toFJy2k=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=WXeDvMyfAXUjuOVOZ6dtLGSv7JeQaSyjegIAo6DMfPbhbMNV9YxZGP7lP4PmPWO+M
 tAbM23TgBhmesPs6dzd5oLolcDUY63W56htLOp/wDfqnHfz8xJV2GzIp5kMsqRJ0MS
 SIRh/sLInIRlWknMx5Gmalx2wXF9lZKaU9DZqVFyBd6R5/FbLpLGdyN+eQLmPlB3al
 S1rddYDiwNM3rEEzeDRs5bAZFiKDGXpomXeypRRbsFqjECfgNu5hI7xhc4FcQTeToH
 YwDqYyDS+CyNGuo8QXuyMKRmhZx0YftWPq5OBh0iL74zdhyRhWQr41VzSmjGYRcv0z
 fGF3mV6V8PRng==
Subject: Re: [PATCH 1/2] meida: uapi: add MEDIA_BUS_FMT_METADATA_FIXED media
 bus format.
To: Helen Koike <helen.koike@collabora.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200922165813.19378-1-dafna.hirschfeld@collabora.com>
 <20200922165813.19378-2-dafna.hirschfeld@collabora.com>
 <efddfad8-1908-745e-5b7f-7acb42b531ca@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <e5f8dc43-fd48-03f1-a0a2-8bca370306b5@xs4all.nl>
Date: Tue, 20 Oct 2020 09:22:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <efddfad8-1908-745e-5b7f-7acb42b531ca@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfH/KWMj1NZZILM5Lor+JDghCFlRIqZFXKrBuBp/jEglgVBlnxFy3UZHXzVPfznwtGtNLFo4g6zME3CmDBs5a8kbrU8nDJPv5tE/f7B1FvqnH8MS3RnXR
 6YM7344JOHr1ajjoS1k6K88tTVL6UMFcNs0kFRAvO+ATfdBOqmJ+NPFOiNz88u7XBT1IV6AjZuCEY6LzCw6/dB6ZKwDj7TjLstOB5/6Yj8CxMoged5sW+ZRs
 c6zCWLPJb0DP/6TCMyFMDOCCc/D6HZaSi4lYyXMDSB1EJQ9J3f6kENeRUSleFkZVeVWlVVI2DHl+99rc9gYtWjk9gFIA6BuRD+asXhW25eC8l68bo1WLp011
 0Q2XDY3yD3bRt57AvqkW4g+72hMpc087OT1HEvZJ26Jjt/FlhgOr7xchgX9EcggNvQf2si6Vm5XaKwxc4KY+JiM55KmlTmiaRzKcfcqF3fTP0ARLbP76ccsy
 CKGZl6amAwAwtFrNFCd86ycc3umcMZD9N+X4z9ZZs0oWwkC2w9djYKt/AmzhgP3AuLq0g9fdTTf/nlVm/neD2L4anXr2s1BLHdKe5w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201020_032251_930483_047B63F1 
X-CRM114-Status: GOOD (  15.81  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 14/10/2020 22:40, Helen Koike wrote:
> 
> 
> On 9/22/20 1:58 PM, Dafna Hirschfeld wrote:
>> MEDIA_BUS_FMT_METADATA_FIXED should be used when
>> the same driver handles both sides of the link and
>> the bus format is a fixed metadata format that is
>> not configurable from userspace.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> 
> Acked-by: Helen Koike <helen.koike@collabora.com>
> 
> Thanks
> Helen
> 
>> ---
>>  include/uapi/linux/media-bus-format.h | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/include/uapi/linux/media-bus-format.h b/include/uapi/linux/media-bus-format.h
>> index 84fa53ffb13f..847b45fb546b 100644
>> --- a/include/uapi/linux/media-bus-format.h
>> +++ b/include/uapi/linux/media-bus-format.h
>> @@ -156,4 +156,12 @@
>>  /* HSV - next is	0x6002 */
>>  #define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
>>  
>> +/*
>> + * This format should be used when the same driver handles
>> + * both sides of the link and the bus format is a fixed
>> + * metadata format that is not configurable from userspace.
>> + * This format may have 0 height and width.

I would make this stronger:

"Width and height will be set to 0 for this format."

Regards,

	Hans

>> + */
>> +#define MEDIA_BUS_FMT_METADATA_FIXED		0x7001
>> +
>>  #endif /* __LINUX_MEDIA_BUS_FORMAT_H */
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
