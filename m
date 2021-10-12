Return-Path: <SRS0=t7eY=PA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A526C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 12:51:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 89D226101D
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 12:51:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 89D226101D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMADGM85eEPCvOcRa0F2WqcLlEHOHgNvt9lAjCNOdYc=; b=QhSQf/5HLcu7md
	IFIhgCbemgXBOOvU+pQzQMQiQTPDf91Nz9O8M+hio5GR81xTmhcO5JZUkBFyyTLuAI67LRdVjjoJx
	felFy0MqKRnG1fMFyCkHuGeScROB0jGWHJDl/HrHj0nubqKYrUSRnMqBCcIMIiOZuFfEYAYPUy682
	c0TuSPR/qlCEku+sQVUGj709Fg33oLm1F7toFRjeufjEmqbzDtomJ8Fk6Bcmq923p03FQD7QGuW4D
	lminjQrqxcVy/C06eT5ARZMdQmahWASYyK9utZo5PiOL6kkejJrLGG0gcrhScKdkG+nE1npQ2DcJA
	8uwWN4NYnmC+tN4jzVhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maHFH-00CnHY-Q9; Tue, 12 Oct 2021 12:51:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maHF4-00CnEe-Sa; Tue, 12 Oct 2021 12:50:52 +0000
Received: from pendragon.ideasonboard.com
 (cpc89244-aztw30-2-0-cust3082.18-1.cable.virginm.net [86.31.172.11])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 878BEE7;
 Tue, 12 Oct 2021 14:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1634043045;
 bh=VLomMBmnQc4g3tC66N5dZQVnBN/SyHIeZL2mvS4mRuU=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=p7sKXRyxWirW+xJlmGK+r237SFuIMm9HZUIInCKBgEWPPBLzEIjIuIeSkKxk4vc26
 jcVB62VS4ryAoGO69Wt849sxV/iqHxZuYgkC64NqwqYonGXSYaJHqupJKQNQcgRxt6
 EMHkHu/0CQyvwMaLn/rN69qDwRPO0MNbbam0SZ8c=
MIME-Version: 1.0
In-Reply-To: <20211010175457.438627-1-mike.rudenko@gmail.com>
References: <20211010175457.438627-1-mike.rudenko@gmail.com>
Subject: Re: [PATCH] media: rockchip: rkisp1: use device name for debugfs
 subdir name
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Mikhail Rudenko <mike.rudenko@gmail.com>,
 Helen Koike <helen.koike@collabora.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
To: Mikhail Rudenko <mike.rudenko@gmail.com>, linux-media@vger.kernel.org
Date: Tue, 12 Oct 2021 13:50:43 +0100
Message-ID: <163404304327.2976390.18225391015638170307@Monstersaurus>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_055051_109182_F21A61DA 
X-CRM114-Status: GOOD (  16.22  )
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

Hi Mikhail,

Quoting Mikhail Rudenko (2021-10-10 18:54:57)
> While testing Rockchip RK3399 with both ISPs enabled, a dmesg error
> was observed:
> ```
> [   15.559141] debugfs: Directory 'rkisp1' with parent '/' already present!
> ```
> 
> Fix it by using the device name for the debugfs subdirectory name
> instead of the driver name, thus preventing name collision.
> 
> Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 7474150b94ed..560f928c3752 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -426,7 +426,7 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  {
>         struct rkisp1_debug *debug = &rkisp1->debug;
>  
> -       debug->debugfs_dir = debugfs_create_dir(RKISP1_DRIVER_NAME, NULL);
> +       debug->debugfs_dir = debugfs_create_dir(dev_name(rkisp1->dev), NULL);

I would wonder if they should be grouped under a subdir called rkisp1
... but that would then still keep the same issue that whichever was
second to probe would find that /rkisp1 was already present. I suspect
debugfs would make it possible to check if the parent was already there
and only create it if it exists, but anyway, it would then be harder to
clean up too.

So separate based on the nodes sounds perfectly reasonable to me.

Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>

>         debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
>                              &debug->data_loss);
>         debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
> -- 
> 2.33.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
