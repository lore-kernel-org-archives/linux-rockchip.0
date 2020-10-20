Return-Path: <SRS0=P5PH=D3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB82C433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 07:23:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CCE002223C
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 07:23:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="QBbu9Sjp";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b="MM1PMt3l"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CCE002223C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A15mD7DJXG4dldzVADIHLJHzJ1KV/0zubc4LZawHXrs=; b=QBbu9SjpGwLOlB0UrmgJnCMs+
	hI5CgtRXlWZU1e+2o7jNyEHZJPfX5s2eqIV4eKC9KFaXbn5/PG2i0sVGekRPtOfURzLKZLq4h9o0K
	N1XIKU/VrlZzBOHyXsyNwntSebTXMqDFTDQJqVxdKdcc+gDdbPxNYnh1h8kdtj9ijwyRBGTsJYYgB
	nh+oP24CCJhEuaMAwN8J9LWB9Ger9NLgHGOlD6v2zJXbLk0iXukr1+NCA8Oor5T6ARy1umefdgmrF
	aydeWJ7cbjfHIVx6cCM0pIxGw9qp21f0vImW2PGT7LFK9Jed2eAA6L9QDGPT10w7xKuZosXQr/AUZ
	UHAQ8gPGA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUlzh-0007iG-4u; Tue, 20 Oct 2020 07:23:41 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUlzf-0007hO-15
 for linux-rockchip@lists.infradead.org; Tue, 20 Oct 2020 07:23:39 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id UlzYkj2Z9ghRkUlzcktHT7; Tue, 20 Oct 2020 09:23:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1603178616; bh=CXMdVXVJM7gru4N4v4dn2yLK49cNnh6qbNS6C5QCSM8=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=MM1PMt3l71n12pJ1g+kHIXyj47taY0N3ABE4yoceuN6UWh4zMo9ONfnn4HQIk7KfY
 dRLDRmheqyF9kc4/OxcH5h/Q+KyO+9U7jb1Q1vuYgVPlge5zy3wKWrX5D3U33E8lRR
 y+GWYBGjmhFCP5uRRAOxPYveop3qcsWZsLuICTYfOZ7gph2Q2DWfHsv0Kacn+g/JBV
 7TuAbC3Jffr9hsDgQIZ57wzkirh17/+s1H3ScYf1giTJoTeVn2F5MAqGe/PRnAKXpr
 8qwKYy6l/qEl0/Zx8KBvSkOhzADQY25wKGfangpT2BRRCsDWKWgaCbwR0pVj6WEBHo
 1et/MeNhNxmUQ==
Subject: Re: [PATCH] v4l2-compliance: skip dimentions tests for media bus
 format MEDIA_BUS_FMT_METADATA_FIXED
To: Helen Koike <helen.koike@collabora.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200922171933.3830-1-dafna.hirschfeld@collabora.com>
 <ee3c92ea-8f1f-477e-4f16-d8a6b8c5918f@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <3b6ce2b2-5ce7-5184-25ae-0583026c214e@xs4all.nl>
Date: Tue, 20 Oct 2020 09:23:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <ee3c92ea-8f1f-477e-4f16-d8a6b8c5918f@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfK5aoagLPuAhEIHj9XcS5zzXK2LiHvDj2rSItGtlQODj6dzLypLiyZHuLi6tzgLU6Hnph6y4Aehqgmb0PdCh0uDJyJPZfzIipvjdaDiOWf0qfvIzWYzB
 0cmKZUWOBCkjOQ2av5nz30PTcMeyDVTPeK7Jxnq0oFZPet4Cl+XBHwR8Jv961BwiMGJtlXjvUJP2/LdGo9nwSO0PY6jI+/3S6bXYtLk3PAZxvLJkzrE16j46
 3AbxMLfajfr79sqvh++rhQNHpX4YGRVjPE7JNzb10rnsGqHJOJlxVceclUlxJy1n8vtoQ0qWq/wF8u3EUDo2I8PrSOQ4usG+6W9ukq7QGJY3myPsowu6bA89
 9U+y0FNg7A3JPDrDlmQjEFG78nGwLgcZYT461Xt0726fVYo2jZqs97CE3zGs9nfAsrZASFAis9Qg22VnM17SMTiSjVwg9dKp7rh3XwCruS21DZWPyL4KkbrN
 sHqdMzmieUigxrtrxChyDpBXr0maytPYPzXxLdIpDFPSHR+yvM3ybSKyCQvp/bqV3X1+hBYp6g8ZDaz/+1pZf8YS59mEZpEOg7kN1Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201020_032339_157028_806025C7 
X-CRM114-Status: GOOD (  15.73  )
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

On 14/10/2020 22:41, Helen Koike wrote:
> 
> 
> On 9/22/20 2:19 PM, Dafna Hirschfeld wrote:
>> The media bus format code MEDIA_BUS_FMT_METADATA_FIXED
>> is used for metadata formats that are not configurable
>> from userspace and therefore may have any value for
>> width and height. So skip width and height tests for
>> this format.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> 
> lgtm
> 
> Reviewed-by: Helen Koike <helen.koike@collabora.com>
> 
> Thanks
> Helen
> 
>> ---
>> note, this patch should be applied after updating the header
>> include/linux/media-bus-format.h to include that new format.
>> ---
>>  utils/v4l2-compliance/v4l2-test-subdevs.cpp | 6 ++++--
>>  1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/utils/v4l2-compliance/v4l2-test-subdevs.cpp b/utils/v4l2-compliance/v4l2-test-subdevs.cpp
>> index ec3ef169..f60853e3 100644
>> --- a/utils/v4l2-compliance/v4l2-test-subdevs.cpp
>> +++ b/utils/v4l2-compliance/v4l2-test-subdevs.cpp
>> @@ -300,8 +300,10 @@ int testSubDevFrameInterval(struct node *node, unsigned pad)
>>  static int checkMBusFrameFmt(struct node *node, struct v4l2_mbus_framefmt &fmt)
>>  {
>>  	fail_on_test(check_0(fmt.reserved, sizeof(fmt.reserved)));
>> -	fail_on_test(fmt.width == 0 || fmt.width > 65536);
>> -	fail_on_test(fmt.height == 0 || fmt.height > 65536);
>> +	if (fmt.code != MEDIA_BUS_FMT_METADATA_FIXED) {
>> +		fail_on_test(fmt.width == 0 || fmt.width > 65536);
>> +		fail_on_test(fmt.height == 0 || fmt.height > 65536);
>> +	}

I would always fail if width or height != 0 for this format.

Regards,

	Hans

>>  	fail_on_test(fmt.code == 0 || fmt.code == ~0U);
>>  	fail_on_test(fmt.field == ~0U);
>>  	if (!node->is_passthrough_subdev) {
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
