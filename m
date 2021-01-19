Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78CCC433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 15:00:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 400612312E
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 15:00:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 400612312E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zFap3gBBQbPUctPWSZO70F79cxdDCk3Ifv2r6LLYaYk=; b=TRdgTNgZzl+NZSUZySX2KwsmD
	k+dWh1V20GfQ4fPj/aNV5B8hF5mD6XJGSMn/kVkWBjvmFJm6By7TntCO+NXbGhlMtOlpsm0MxVW8j
	IZiwYc6uC9ykZWoAivwNGvHIhsWGqiJENJXQ9QjnKGuwTQyhM77tS+0t+1YKoDM8afGcKeYfunys3
	E/rojoHdMB5Ca1crJk3Pn8OnaTJv91QLlv/4mSAbEHbomC83m0tLdtdACaJd626XZClaTEeG7Qh7R
	AF2y8vvPN9mJdd+1J4D8isSgz1GuH7gjTnowNevpX7jkQSNWt/jmAVcTM5Rex21SyUoJthu/+d0fD
	yeABIslhw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1sUQ-0007yp-JI; Tue, 19 Jan 2021 15:00:14 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1sUO-0007xK-Po
 for linux-rockchip@lists.infradead.org; Tue, 19 Jan 2021 15:00:13 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id 1sUFlPa4uyutM1sUIlbygq; Tue, 19 Jan 2021 16:00:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1611068407; bh=3OuqhX0fKb5Rnnw4IYeJ75pOR3gDxev3dlWAVofDOeQ=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=Gz6GeNPCFQv+xwMwBZyw5TePirWbSa3QrX/ZwdYV2CszxJ33vP6N9FbG4RwQOPrvq
 +bss3VRPFVO24RDJ+mPVUSTRjGGNHIRySNrq0zOmYuWdDpki39wFLe7eo8OOyrHZ1g
 1sYvVTK0wMV02WUWGaw73UDbEe2FcdXioBOvwFg6qyFTFysEqXml182tyjQfeCkjS6
 tNq158Ppyiv3jKXhuYwtfOvl+lXlPwFuVLrCTea3B7lWnNE2lXFunhpA0MJ01TDiqN
 k5q7+ihB9/TIXhO4OE598m4uChgBZj8n1RiN290i9irDsDdtMBqOb0meUs4zfYZGeK
 DltK6yrsvEOKg==
Subject: Re: [PATCH] media: rkisp1: uapi: change hist_bins array type from
 __u16 to __u32
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com,
 heiko@sntech.de
References: <20210119145341.29686-1-dafna.hirschfeld@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <a8f8d9e9-30b1-b594-a9bc-f4a11924bf56@xs4all.nl>
Date: Tue, 19 Jan 2021 16:00:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210119145341.29686-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfPWzEw0Wkw4hqjhvm7Ynu4zg2W37OjbDYCUfHN/8TwvtlSueANiCt8E2tsvp+7+oD1cJvAz/ALt3AeMVg53PRTx61SLfeHnTlzowe301BCqSs9D8YmMp
 h9fy1tmkiunFmx4CkmssW4vEjr3s7B2aSJBYCbYaF3S73FEauadDPF53gmOhe0em8CKXJBmp7p1Uy6Z51GBFKr6tGJg/auQ0TTxQTTg8NToAhDuYom5E7Yhz
 kloM5iFJq18o1I62FPTyW8diVQCTx/mog0tw53D0MWHVsVGqWnkE8V2gfr2sYt0N3XPUceHOXHw8ZvMbfPDB/HMlWT/XNlmxUsj60KOR2c5BEL3kGouyLWas
 GrBTFZaB6aHzYQhWNOtiojPtwt2Q8Xv+930UTzVM2Zf4Z1duxE0FsoqfByLZPgVkRUwVLou1TTPSLmjD4834TUi9yTKojWscrESvZXqZ/weaHKulyE8Kj+jF
 CMzzJx4F+ZCgtF4POFRHFAmONrag3Ut2nnmQ8EKhNO3jTvFhWLytosJVia11QXMTvradKMyfj8nvo8zWURV+ONDhL1k/YxDwYLwl+GH1OxvwcKdHLbPKcQoy
 8GdOxe73LFwOPGuMOlfLQnod
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_100012_941653_5935AE39 
X-CRM114-Status: GOOD (  19.58  )
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

On 19/01/2021 15:53, Dafna Hirschfeld wrote:
> Each entry in the array is a 20 bits value composed of 16
> bits unsigned integer and 4 bits fractional part. So the
> type should change to __u32.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
> This patch is applied on top of v6 of the patchset
> "Fix the rkisp1 userspace API for later IP versions"
> 
>  include/uapi/linux/rkisp1-config.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
> index 57ca3eea985f..47f6b84d7c56 100644
> --- a/include/uapi/linux/rkisp1-config.h
> +++ b/include/uapi/linux/rkisp1-config.h
> @@ -895,7 +895,8 @@ struct rkisp1_cif_isp_af_stat {
>  /**
>   * struct rkisp1_cif_isp_hist_stat - statistics histogram data
>   *
> - * @hist_bins: measured bin counters
> + * @hist_bins: measured bin counters. Each bin is a 20 bits value
> + *	       composed of a 16-bit unsigned integer and 4 bits fractional part.

So bits 0-3 are the fractional part and bits 4-19 contain the integer part?
What goes where should be defined!

Looking at rkisp1_stats_get_hst_meas() I see this:

        for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++)
                pbuf->params.hist.hist_bins[i] =
                        (u8)rkisp1_read(rkisp1,
                                        RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);

Here this is cast to a u8, so how does this work?

There is something fishy here...

Regards,

	Hans

>   *
>   * The histogram values divided into 16 bins for V10/V11 and 32 bins
>   * for V12/V13. It is configured within the struct rkisp1_cif_isp_hst_config.
> @@ -909,7 +910,7 @@ struct rkisp1_cif_isp_af_stat {
>   * RKISP1_CIF_ISP_HIST_BIN_N_MAX is equal to the maximum of the two.
>   */
>  struct rkisp1_cif_isp_hist_stat {
> -	__u16 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
> +	__u32 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
>  };
>  
>  /**
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
