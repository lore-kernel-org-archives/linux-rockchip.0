Return-Path: <SRS0=A5oP=LU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D866C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Jun 2021 00:51:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E896B61878
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Jun 2021 00:51:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E896B61878
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8liwC6WiTPZXMJqdHy4iAGq33enISnvPKEHkH09wBpY=; b=gE3YD//XqwQmBM
	qSzkLha8g8mVPQKkXYNBwOC9Nnm/anRa7aCGjSbpbQBZKA40e617WtWt9SocgTohAIFZWVuwKmC92
	ce5axci+WlrKu9k9qoGNAG2uSm08HwXHAQZaejSyAqEOs92RX0k/+bNQBRqYeqnOTZL1AaazYsyhJ
	0VaAzn33hKW6DDb5JZgV/rWwKxOCsuxGhe8lRxn5GBgf+HZMsIuDtn8sPoNQUzDCHGATzYnd7X5lq
	v8Qp5hK3hoJxxIFUEazRhYtSJnS0T9/4OZUnSRsLd/ru/xyIngbASZRffkXImzRJ3uWxO19DDIOHU
	R3/aaRf7ohd/5RPOwWhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwwXY-003AN2-Rf; Sat, 26 Jun 2021 00:51:20 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwwXW-003AMA-BY
 for linux-rockchip@lists.infradead.org; Sat, 26 Jun 2021 00:51:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5CFA21F40F21
Message-ID: <017548f29279297fc79537cf486bcf3df2b603a1.camel@collabora.com>
Subject: Re: [PATCH 1/2] media: rkisp1: remove field 'vaddr' from
 'rkisp1_buffer'
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, 
 linux-media@vger.kernel.org
Cc: laurent.pinchart@ideasonboard.com, helen.koike@collabora.com, 
 hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, 
 sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, 
 mchehab@kernel.org, tfiga@chromium.org
Date: Fri, 25 Jun 2021 21:51:03 -0300
In-Reply-To: <20210625082309.24944-2-dafna.hirschfeld@collabora.com>
References: <20210625082309.24944-1-dafna.hirschfeld@collabora.com>
 <20210625082309.24944-2-dafna.hirschfeld@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_175118_551605_9371ADEF 
X-CRM114-Status: UNSURE (   5.74  )
X-CRM114-Notice: Please train this message.
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

Hi Dafna,

On Fri, 2021-06-25 at 11:23 +0300, Dafna Hirschfeld wrote:
> The virtual address can be accessed using vb2_plane_vaddr
> therefore there is no need to save it in an extra field in
> 'rkisp1_buffer'. Remove it.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>

-- 
Kindly,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
