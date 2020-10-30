Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF288C00A89
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 08:58:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D7BA720709
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 08:58:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="pDEcvq+4";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b="eCb1ZYxL"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D7BA720709
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1yDs7O2yNMA+v0UcPj13QM2+jWzEPzCB0hNUiSaCEWI=; b=pDEcvq+420fIgp+9ACzMv6do8
	Y3MbX+1EevAIHnVgmSJh1j7n7gD5cTLA2g59Xa4spnYjmCrblKeYskeQBQkass30wkuXrDUbUp1wS
	9PCAZ7xJTDko9IfQbsbCVijGHBwkl6z+JfEGaI4JE211KaelNAxHTY/Ca0tT/uOzBqj+p3fwUeFlm
	MWbDWkj/pk58sdop7EHWj7vXc4xzwiaguPxz2yargPy59WXTs1vi6n8km+5oBt/N1ez/jHI1ic6vG
	zbP0OurdB+En1unN+eganCYnhPlY1GWkyMY+ylnCZyJAQBJyGfDJqJpnSHpd0rHBOgCjMryH4+iWD
	mgcTlOz9g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYQEw-0001v9-Dy; Fri, 30 Oct 2020 08:58:30 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYQEu-0001tL-6O
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 08:58:29 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id YQEhknGriWvjMYQEkkGjz9; Fri, 30 Oct 2020 09:58:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1604048301; bh=hKR/eJ1yTmtG9y/mUnTDtJCLd3zgjl8xKTjdYZPCTAs=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=eCb1ZYxLLZLJ34eGFRId3ZfjI5NJMk2e1KCDbH+xTvhizWCdUpg5iYsXQ3Aa/nf2j
 3xv9sM8SQ8V309yB/y0xTIA1S3BJyiuub2+3gfnmDZKYH1SnPXn/a4oMYQ/3Ao/Rmf
 lGI/05JGfPx1uiLUtf9Afctxx/zgl0PUJOwDe+RFmXvY7qhbOJEEmQmPbPQJgYEyMX
 NfpZkJ+/3r3jL5r8jBKst0Tj99kyecqK4q8VN21rcVFgBmFKsmWKY2jHBY0dl8TWpP
 0PJFsada+59o65h4xFNRbwLR32jk6byhKiSUAM7GTfLiMNF2ZqgtXOmyiZJQV+ai+8
 1fq+M9T7AwgYw==
Subject: Re: [PATCH v2 1/2] media: uapi: add MEDIA_BUS_FMT_METADATA_FIXED
 media bus format.
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20201020154522.654-1-dafna.hirschfeld@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <04d5a149-8745-ae20-a622-bcfcafb69cbb@xs4all.nl>
Date: Fri, 30 Oct 2020 09:58:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201020154522.654-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfFLMelhytvJkl5ojwxk1QbQO3rLfBBjidcrbZbb2AVnDunRh4ze4GWQIivmPxJVzV5GP6JvNryTaXXUZmZQQopDhahvFib0IGrCQs/jjwM6/GlrXGpSB
 BiUkWpS73pQ+FWlOXdjUl2t5H4NPg9vu2e8igxEuEXqnstcC0diHtIsrLVLGcpmjEhP9esU90mC1CrjoAaUcNKyeiRDCayuU9RNKVFDePTjOpQCRVcwWSB+h
 QUuVAMg4Fy5F0JHnHK513+P/NY3eRnQNaXvp1Xz3JiSpsKLGd6zqFf35e8TxIM/00enKd5Ua9AY8RfkdK7u9ULJqkA8ryb8G4NphbFyOehkxuL8YafUGlpPC
 t7NiVejOtZ9Id3D8I/khuVgezaaJtH1fkK9SIREfW3XZD0kr9xgJZ+LmPJ2GsxcIwf8SGwLIQLfH89sK9EYO7phO5jb3W2FgFIlwM9OQvapWoEoJnd7/WcDG
 wE6Hj/p0Jmzj1QW4lZ7dQLpcne8YPFRt8oMAAY+mMwn7f7X0dGiMqZhBTtBvku9SGN+qOow4sbmRBfsPXKwys+AcE8ZHEL3+WLLKfQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_045828_390665_F149FCC0 
X-CRM114-Status: GOOD (  20.76  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 20/10/2020 17:45, Dafna Hirschfeld wrote:
> MEDIA_BUS_FMT_METADATA_FIXED should be used when
> the same driver handles both sides of the link and
> the bus format is a fixed metadata format that is
> not configurable from userspace.
> The width and height will be set to 0 for this format.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> ---
> changes since v1:
> 1. replace "This format may have 0 height and width."
> with "Width and height will be set to 0 for this format."
> and add it also to the commit log
> 2. s/meida:/media:/ in the patch subject line
> 
>  include/uapi/linux/media-bus-format.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/include/uapi/linux/media-bus-format.h b/include/uapi/linux/media-bus-format.h
> index 84fa53ffb13f..2ce3d891d344 100644
> --- a/include/uapi/linux/media-bus-format.h
> +++ b/include/uapi/linux/media-bus-format.h
> @@ -156,4 +156,12 @@
>  /* HSV - next is	0x6002 */
>  #define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
>  
> +/*
> + * This format should be used when the same driver handles
> + * both sides of the link and the bus format is a fixed
> + * metadata format that is not configurable from userspace.
> + * Width and height will be set to 0 for this format.
> + */
> +#define MEDIA_BUS_FMT_METADATA_FIXED		0x7001
> +
>  #endif /* __LINUX_MEDIA_BUS_FORMAT_H */
> 

Documentation/userspace-api/media/v4l/subdev-formats.rst also needs to
be updated.

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
