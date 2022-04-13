Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35FD5C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 09:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+OZSRNlpYkGlbdZW5DQUVnmgwhXK5/GFTsMY6cUpCgA=; b=UA5AvnFa2bImzv
	03jOfwNfgJkpkPNjUJCslGYR7RBkg6kETGS+fuqUAz07FzBdoH99ChYu+rB+xy4ilttneYgx5GGum
	9bwhtZiIRow1CSLcfXo0aURdVlTxBE3DxaNgqzHuVK0A366O6NQewx9jwA5ST6DlIgKCKwpVg9DIu
	9C9ksR4Bqs9SZsbR3HjXVJVD1ExYMrQ4t/2qrmPtdYSVnZX6UJNBCjnTEga7LPHRgLYcB3dB245Ve
	ZgFyu5N4T058OArvfbj6f6jLVwzerEBpqTpytvGEgtrohF5QZ5P40/qaEr1V/hMFjSSaLKDWcAONP
	qjjTYgfMROy+gdw9uulA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neZhW-000Rmp-BM; Wed, 13 Apr 2022 09:54:14 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neZhI-000Res-F8; Wed, 13 Apr 2022 09:54:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 2F533B82178;
 Wed, 13 Apr 2022 09:53:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63ABBC385A4;
 Wed, 13 Apr 2022 09:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649843638;
 bh=Wb7p5+hjmHsBsLBQbro2bfTLXKiDwDGJXsLe1SdZawc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=puHkI3/HkSkrN6yHbSN3Cwbp/ra8pyXcR+01BYDczlqPHrVTYCJGpVMyeKm9CC+zC
 0oey2Ew6vKXWXRUFY4uDh7kdhqXObpYTIUGqO7MTnJ8cFtznIxdrq93kALwZfHWZ80
 KYGnWV3KSWGd8CHJN5WlV6w2kAN56HLZPM8Nrg0hZ5bFqyE+XsNnp01B7WRzVMcKQE
 h5QreN7579WgkMAtaLWwr0BWXVt2Ge2m8k8MpSwtfns3fswQcV4fK39wKbY9UsKnG2
 IVJsCUnLxaLVv+nrUxFdeIyFx71U9Eu0jkHXqkB1OL892qCh4GVyKtki5fqxashd5a
 FBHFrRvI2qr5g==
Date: Wed, 13 Apr 2022 15:23:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: cgel.zte@gmail.com
Cc: kishon@ti.com, heiko@sntech.de, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Minghao Chi <chi.minghao@zte.com.cn>, Zeal Robot <zealci@zte.com.cn>
Subject: Re: [PATCH] phy/rockchip: Use of_device_get_match_data()
Message-ID: <YladsfTMN4/SDo50@matsya>
References: <20220304011755.2061529-1-chi.minghao@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220304011755.2061529-1-chi.minghao@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_025400_692006_01C18113 
X-CRM114-Status: UNSURE (   6.71  )
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

On 04-03-22, 01:17, cgel.zte@gmail.com wrote:
> From: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>
> 
> Use of_device_get_match_data() to simplify the code.

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
