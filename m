Return-Path: <SRS0=vbLC=C2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5ECC43461
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2020 15:06:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2716D206D4
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2020 15:06:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1MAq6eUI"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2716D206D4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H0rjg1a4sYuAzU/UgN5O+NMOXcrdHxfvGLPB+2rwCHM=; b=1MAq6eUIuw5ZvQf2TI7cOPacq
	p3DDECh7ZBRnLLiPN2dKqM6vKaiAfwkQqvp8ATRI5a4c+PF+Sh4pcSxZBqIRhnJxcp8saELX8aQ2X
	zvfstukcsLcA3QdTvyHoWXcSXfuxgFqeFirEyT8wUG/2VGruLv19VPaKCqFBkG611+6NSzuO9P7hy
	NaCSDT05GaG/evsdkXv13SdMHj29Gnjwj6uaI6jyUTIldxvAdfNvSCjChLs0LeWushEvhy4ItaRdE
	hE/18JFKsp4O8kOl6Te6DT5ef4sujBoNBKDLi3a7M/KTfrnKjlR1dNQFGkXUPsnerhILTWY7qIQ7s
	C4AFH+mkQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIvUL-0007qR-6R; Thu, 17 Sep 2020 15:06:21 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIvUH-0007pE-WF
 for linux-rockchip@lists.infradead.org; Thu, 17 Sep 2020 15:06:19 +0000
Received: from [IPv6:2003:c7:cf13:ec00:15a4:c2da:98cf:28d0]
 (p200300c7cf13ec0015a4c2da98cf28d0.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:15a4:c2da:98cf:28d0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D409D29BFA0;
 Thu, 17 Sep 2020 16:06:16 +0100 (BST)
Subject: Re: [PATCH v2 0/2] media: admin-guide: add documentation for rkisp1
To: Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org
References: <20200818102703.30471-1-dafna.hirschfeld@collabora.com>
 <f696e967-ce1f-e7c1-a74b-ff944332bd67@xs4all.nl>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <745694bf-6609-c405-268e-7f387d01216d@collabora.com>
Date: Thu, 17 Sep 2020 17:06:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <f696e967-ce1f-e7c1-a74b-ff944332bd67@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200917_110618_377771_D045515D 
X-CRM114-Status: GOOD (  20.01  )
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
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 17.09.20 um 12:52 schrieb Hans Verkuil:
> On 18/08/2020 12:27, Dafna Hirschfeld wrote:
>> Two patches that document the rkisp1 driver in the Documentation
>> directory.
>>
>> patch 1 adds documentation to the specific metadata formats
>> used by the driver.
>>
>> patch 2 adds a documentation of the driver.
>>
>> The documentation assumes that the patchsets:
>>
>> "v4l2: add support for colorspace conversion API (CSC) for video capture and subdevices"
>> https://patchwork.kernel.org/project/linux-media/list/?series=334393
>>
>> "media: staging: rkisp1: add support to V4L2_CAP_IO_MC"
>> https://patchwork.kernel.org/cover/11680993/
> 
> The MAINTAINERS file needs to be updated for these new doc files. Just post a new patch for
> this, no need for a v3.

Done,

thanks,
Dafna

> 
> Regards,
> 
> 	Hans
> 
>>
>> were accepted and it documents the features that those patchsets add.
>>
>> changes from v1:
>> ----------------
>> - limit lines within 80 chars
>> - rephrasing and fixing issues due to comments
>>
>> Dafna Hirschfeld (2):
>>    media: pixfmt-meta-rkisp1.rst: add description of rkisp1 metadata
>>      formats in pixfmt-meta-rkisp1.rst
>>    media: admin-guide: add documentation file rkisp1.rst
>>
>>   Documentation/admin-guide/media/rkisp1.dot    |  18 ++
>>   Documentation/admin-guide/media/rkisp1.rst    | 181 ++++++++++++++++++
>>   .../admin-guide/media/v4l-drivers.rst         |   1 +
>>   .../userspace-api/media/v4l/meta-formats.rst  |   1 +
>>   .../media/v4l/pixfmt-meta-rkisp1.rst          |  49 +++++
>>   .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    |  23 ---
>>   .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      |  22 ---
>>   7 files changed, 250 insertions(+), 45 deletions(-)
>>   create mode 100644 Documentation/admin-guide/media/rkisp1.dot
>>   create mode 100644 Documentation/admin-guide/media/rkisp1.rst
>>   create mode 100644 Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
>>   delete mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
>>   delete mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
>>
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
