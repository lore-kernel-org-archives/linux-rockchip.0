Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66F2EC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWJV4nTuGKszqysBY5nTFq+AA6JSS3QorCd+wrIPYoo=; b=EE/kjGf4lIaujN
	Xw5niXL7Kwh1AweQI0Z2LFD/MkHzvjPGK5Dt5aTTcGg03G67mguyENR5ZlO6p1rgAAvofJz9jjwJw
	0VMXwek71qkU0jOtzCDQU5JOdWLy+pZbKY87qkl/dkeohOxKlU7LaCAnmpUwBAkSLLJZUY+ppOyqu
	tvcjyN17c9uesBJgXmMuRbBeJVG9ptGO+1RRs5hPmufaTv1JZVgLlts7erWNTt89so3l7eLP6Pyht
	s2xOt8N5O23u1DhbMgkFxNiBtARGsQckTQeLJT/xEJ/0XxdswhBFfFaEJzysLeHCdqRTxKHzy/1vD
	fS4aPs92tLi80ei3RmqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzeeX-008MYl-7c; Fri, 10 Jun 2022 13:26:17 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzeeU-008MWD-5k
	for linux-rockchip@lists.infradead.org; Fri, 10 Jun 2022 13:26:15 +0000
Received: from [192.168.2.145] (109-252-136-92.dynamic.spd-mgts.ru [109.252.136.92])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 74DF76601724;
	Fri, 10 Jun 2022 14:26:09 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654867570;
	bh=tT1jJ5a9K7KdBiLm8g0dOgTvRZsIIl3nYsCefhYiaKE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JtfphsybuNf9jwA62JOvrpW2KC2UX/VuEo7eJvFHDbDMDZ8+PS0O0oRXnNT+lEddW
	 xUJe48C/W2diI+BjpeBTTJs0m+JXTWQGpzPx0q5nH4+VtM6AIolI5F95UuwVD29Uqv
	 my99LRuc7hXy6LyBrgFglX+9HcT9bUoPE1NqOYvji8PkzuN7KXX4MoIVrXNB/k/Wx1
	 5ENAtraBwUS2yEZ4/hRQmA+npqJiZ/S53A/FUymrRKBZTxdPD3yvNRZrucGIILhbjK
	 OXVMY3hRBSTzW3PxgwT6paWSPWS1Kpace4Nn2vKieWsXDdSKLQFRMJ+dlu8Wlu2tfb
	 r7TpYKUWgVp4Q==
Message-ID: <dabcc9ff-2fec-2f84-936e-3e0b71ad7ca3@collabora.com>
Date: Fri, 10 Jun 2022 16:26:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v1 1/5] media: rkvdec: Disable H.264 error detection
Content-Language: en-US
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Boris Brezillon <boris.brezillon@collabora.com>
Cc: kernel@collabora.com, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20220610125215.240539-1-nicolas.dufresne@collabora.com>
 <20220610125215.240539-2-nicolas.dufresne@collabora.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220610125215.240539-2-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_062614_390326_DE2E15EE 
X-CRM114-Status: GOOD (  12.63  )
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

On 6/10/22 15:52, Nicolas Dufresne wrote:
> Quite often, the HW get stuck in error condition if a stream error
> was detected. As documented, the HW should stop immediately and self
> reset. There is likely a problem or a miss-understanding of the self
> self reset mechanism, as unless we make a long pause, the next command
> will then report an error even if there is no error in it.
> 
> Disabling error detection fixes the issue, and let the decoder continue
> after an error. This patch is safe for backport into older kernels.
> 
> Fixes: cd33c830448b ("media: rkvdec: Add the rkvdec driver")
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> ---

Nit: won't hurt to add the explicit stable tag if you'll make the v2.

Cc: stable@vger.kernel.org

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
