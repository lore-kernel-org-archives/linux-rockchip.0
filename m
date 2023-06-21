Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DB65EB64D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 10:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DVATJXSID7lcBSGz1SHuCsg9eeJzQAUItt1sEBBFio=; b=VfWZrcukSqTvYT
	Enr4GMH+E/o2bkW9ZJGxY7VRSwgyUiVpO1fDpG0Ln66/CJf8Ms4XSFFiDftGgO5JRoe0LsnEcs2LZ
	pBZGK05Jt5Pe79z/MS8DDj6Yfgb+FA4vrtumKxIe6Gpt6Iza08Pesf2hVkQ+RvRjzjeE1RjQv4/7K
	n/NT6WeZAjwj6mzAm0lMGIuSkjhAdBGSjfW4Avy40iKX1gIUpY+Jk3ft2F2oQpxMg5Di/+qu3MfeD
	99iN4SjIiLlSYDx/mMDbaTEmcexAHjSD0yyHx7/a+yLpyfJrRcZOApIotaPK6fz5d0eE1tcOcWLjT
	OrxsRwtrAcaOqBtpIAlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBvQm-00EFjJ-0u;
	Wed, 21 Jun 2023 10:51:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBvQj-00EFge-2L
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 10:51:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 23EB9614E3;
	Wed, 21 Jun 2023 10:51:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C1B1C433C8;
	Wed, 21 Jun 2023 10:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1687344676;
	bh=ruepZViEyvLdgTSowTD3U1gw1j3qplIAbB79+lD5rkY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KL3/NR7Jc6MI+J2NkKoJtlgGiREm0c2CGLgfg1SWhEiJVhx9Z9FGYmg/Jt//0Bqr7
	 85WZq75h1oEdvWFu3X+3/Z4ivf+U+wj50VymF418QjzUXfYwfJymvYZN3XaEDr5te0
	 f2wnaAieERcrBJ26BCmThvG0/ie424GWQddGrVwE=
Date: Wed, 21 Jun 2023 12:51:11 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: emma christy <emma.t.christy@gmail.com>
Cc: ezequiel@vanguardiasur.com.ar, mchehab@kernel.org,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Subject: [PATCH] media: rkvdec: removed redundant blank
 line
Message-ID: <2023062136-drench-pasty-79a2@gregkh>
References: <20230621092223.10805-1-emma.t.christy@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230621092223.10805-1-emma.t.christy@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_035117_803445_F611195F 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
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

On Wed, Jun 21, 2023 at 12:22:23PM +0300, emma christy wrote:
> Adhere to Linux kernel coding style. Removed redundant blank line.
> Issue found by checkpatch.
> 
> Signed-off-by: emma christy <emma.t.christy@gmail.com>

You might need to write this as "Emma Christy", right?

Also, your "Subject" line has an additional [PATCH] and "Subject:" in it
somehow.

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
