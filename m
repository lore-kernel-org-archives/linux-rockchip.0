Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B61C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 18:40:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 227FE20706
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 18:40:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 227FE20706
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YN7E78N0LXZcwj6SzPD3v0Vz6gHsLK61o8ui0a2UbEI=; b=AZFaEAJD+UihdKmq/uGl139lV
	5S2jqLuiytY6iTENKJ4faKu3rmig1CdY1/+w6MbtGtLOUKHBa9mztpCkZopmJE/+lQGjYBcQQ4GZX
	Ch7VUVfrBGhgAaxoAkUFu/s8QBcNtUhZb6trFiLNbinfifvYoyNawK4nk7XZYAWobM71Fkg/9tBWT
	KigGyoXoS+iqqiZQnwASQGitfSD+k0HIdVhPFno72sC3rZBZNX7yovLfaKKEecJhNetBVfu5yQoCF
	Z2gpnZ5QVWnN8UZ0MYC7sHvkGUWKzj/Hz7kHQYqwP77qsEqv+Shf/heCGtIXLn/00hYzhOr6ZGBhk
	3cEQPAK3Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1tw0-0003OT-Cx; Tue, 19 Jan 2021 16:32:48 +0000
Received: from lb1-smtp-cloud8.xs4all.net ([194.109.24.21])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1tvx-0003O3-41
 for linux-rockchip@lists.infradead.org; Tue, 19 Jan 2021 16:32:46 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id 1tvjlDTcDftvz1tvml5Vtf; Tue, 19 Jan 2021 17:32:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1611073959; bh=wYhrTKH2t21lZXwyGmejDeHeKnkj/BWeXbuIqeryTwY=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=sqxZfDyTCVuNpKBAfPrrVkX3FiCztvM0zFgB1G8bRS76nGv9DFJZ9RvI3IwrFaBcr
 OL3txbj3XoNKHYVipxAm4CX+xlnyR2fRABeGohbkakItHMsqRplLUL4cf9L5IUCRvO
 UKqskQuyGCNGlUaQrSgSlqhkvvm2XIujrlGtg1zqKbWEm502YYIk23ZxM+L6YZJBQO
 pNDE2jVYqKHm2+Rb5ksLosHk1NTeKzOieabHU+VsoNkt0JkepTGfZerxaVBvzBIbar
 cja5MUsBYX5jDrSbtB3WQuWV3bIBkpj7GD+46Teeyrfuiypu7vXgp74Tihx36RCKlp
 h/DG9JzS+4REg==
Subject: Re: [PATCH] media: rkisp1: uapi: change hist_bins array type from
 __u16 to __u32
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com,
 heiko@sntech.de
References: <20210119145341.29686-1-dafna.hirschfeld@collabora.com>
 <a8f8d9e9-30b1-b594-a9bc-f4a11924bf56@xs4all.nl>
 <fbe57350-f319-dbc7-f093-d3c1c76feb89@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <2e48068e-fcc4-9288-a9a6-59f71d7f20ce@xs4all.nl>
Date: Tue, 19 Jan 2021 17:32:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <fbe57350-f319-dbc7-f093-d3c1c76feb89@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfCmWMp1wb3CXvGZOfejdVwWN8GqWGVKh1SwWabgSPa5C4Cx1feifUUkWqOxtJoZQ8Ek8/VP3J1TPewAaowW6Ve5JiWU5UFxv8iXCby0q23rBlkKQymPj
 SjfyrJmr5GJtaQ1W5Bc/VZ+30T1kDOIWKhPXhrOEVQKI6PjQFYHXWEEJidOC/5fF6tEPT1sfWx6lAh40fqCjJYQETi2DtmIkbugQns7L/dE5IISCYY9yx3wu
 pTIUNGTYR/iRJKdI9iWttqhylpAOUjeq0Gq3EVxnSv7ADR0fwnUAgyvOto5oae0QxrUZUvc6DxPNGnPB6qz8mZ1Dj6cCATfT/c7VYSlp9mPnHVJdLp3jDRMP
 6jaoxnOMiyq+KH1lJ5I8CyteMSVtNSVk7L0SjD1qBsnTnWZpNOAo/2PXREruSL0luscHAGpWjmjOGnSOZ9DEwxw0w6fe+stdOz/IaaClss5fUrWBOfOZPB9G
 BmbRyL9NSF3ito2/qaSNG9Nz5hFL8aAMwzI8Qt32wUTck/2IFehJPgsiudrLSaFiFkuCo411fVqgbUgyaEN9XLRZF/gtoGry8YY1Kpsbxn4nNnhVaRXFgMMW
 cS3e3V07avlC23Qr+CfDNuEj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_113245_769035_41D63BAC 
X-CRM114-Status: GOOD (  22.28  )
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
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 19/01/2021 16:32, Dafna Hirschfeld wrote:
> 
> 
> Am 19.01.21 um 16:00 schrieb Hans Verkuil:
>> On 19/01/2021 15:53, Dafna Hirschfeld wrote:
>>> Each entry in the array is a 20 bits value composed of 16
>>> bits unsigned integer and 4 bits fractional part. So the
>>> type should change to __u32.
>>>
>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>> ---
>>> This patch is applied on top of v6 of the patchset
>>> "Fix the rkisp1 userspace API for later IP versions"
>>>
>>>   include/uapi/linux/rkisp1-config.h | 5 +++--
>>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
>>> index 57ca3eea985f..47f6b84d7c56 100644
>>> --- a/include/uapi/linux/rkisp1-config.h
>>> +++ b/include/uapi/linux/rkisp1-config.h
>>> @@ -895,7 +895,8 @@ struct rkisp1_cif_isp_af_stat {
>>>   /**
>>>    * struct rkisp1_cif_isp_hist_stat - statistics histogram data
>>>    *
>>> - * @hist_bins: measured bin counters
>>> + * @hist_bins: measured bin counters. Each bin is a 20 bits value
>>> + *	       composed of a 16-bit unsigned integer and 4 bits fractional part.
>>
>> So bits 0-3 are the fractional part and bits 4-19 contain the integer part?
>> What goes where should be defined!
> 
> Actually I don't know, I just copied the docs in the datasheet.
> I can try figure it out. I can meanwhile send a patch without the doc until
> we are sure. Is that OK?

No, this should be documented properly.

Is this the only fractional type that is used in the rkisp1 uapi or are there
others? (Just checking).

> 
>>
>> Looking at rkisp1_stats_get_hst_meas() I see this:
>>
>>          for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++)
>>                  pbuf->params.hist.hist_bins[i] =
>>                          (u8)rkisp1_read(rkisp1,
>>                                          RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
>>
>> Here this is cast to a u8, so how does this work?
> 
> This seems to be a bug. I see that this cast is introduced in v12 of the patch
> "media: staging: rkisp1: add capture device for statistics".
> This cast does not exist in any of the downstream versions.

Clearly something that needs to be fixed as well.

Regards,

	Hans

> 
> Thanks,
> Dafna
> 
>>
>> There is something fishy here...
>>
>> Regards,
>>
>> 	Hans
>>
>>>    *
>>>    * The histogram values divided into 16 bins for V10/V11 and 32 bins
>>>    * for V12/V13. It is configured within the struct rkisp1_cif_isp_hst_config.
>>> @@ -909,7 +910,7 @@ struct rkisp1_cif_isp_af_stat {
>>>    * RKISP1_CIF_ISP_HIST_BIN_N_MAX is equal to the maximum of the two.
>>>    */
>>>   struct rkisp1_cif_isp_hist_stat {
>>> -	__u16 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
>>> +	__u32 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
>>>   };
>>>   
>>>   /**
>>>
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
