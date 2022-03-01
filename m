Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C7EDC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 13:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXttXq7sLg7I00dsoyQ+lQ2/RuyUCY41CaFBshN64ss=; b=utu/vmddBiOsFx
	MsVk5s9szxiot1qbM3HLk84TCzjRci8eAuBq/6SGGnZLL4gp2l/9u0xuZTv/+6zVAgRppoA/YSTdT
	o89CBJMGPtLauP6gtKYUoHrtN4tc25RIotfNOpM2Kd0h9uiLCNLX6VjBfs9Q8byuPAhk02g9PfPJ8
	wO8MTFvvc0iEmXtucJvkG81aAu8dH+wGYJk3C+1QXMoxwKg7YrcKv0zgSqXXQnkUpZyWxh7cvPR60
	2C2rnAO9n2Bh+8SQZ5VvwF1azxkJAJ/Ux4MiZF9Xu88stF+KexJvHJin6ZpZYZJEwygKdav7k0ALP
	0QgYodIw0b/mnNNIE7VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP2BL-00Gipq-Iq; Tue, 01 Mar 2022 13:04:47 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP27Z-00Gh4q-6u; Tue, 01 Mar 2022 13:00:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description; bh=M542kUDYwYiNo5piJUcRV3k6x93s5dP3ia7BcMUvork=; b=M1Mzb
 6+gUV25q8y5q9JN07VrgezVwW6vCHpnisrPaZpnl+tM6m6HILbmxTMZDd1+mgZ4yt8SSSNsfaGA2V
 3AepluzHpoN4AEEdyFCSp6k3gemCgESJT8COZqL7Hby/MrWx7zDtQDB1uNE2k1iA/8cGZJ6pW4a0v
 oirP+StqBTdtuqt1W/Z1HClzRmc9d+Pc2rP1eTWQQ30cnBLAjZeVsQpsGissorGUfAiDn6V4oKg5H
 QGASjXN4Dynv1+eOH1ihM6ATCUIW8Go9RkhysUTg76ImfTsDkkkUc6TAMyqyOR5KTKhoUA6MSiHpJ
 qmItrP0ATa0upTuWCke0vlt2zXzvA==;
Received: from [81.174.171.191] (helo=donbot)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1nP27M-0007wi-D0; Tue, 01 Mar 2022 13:00:40 +0000
Date: Tue, 1 Mar 2022 13:00:39 +0000
From: John Keeping <john@metanate.com>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 00/16] crypto: rockchip: permit to pass self-tests
Message-ID: <Yh4Y99KCi+1lbrve@donbot>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228194037.1600509-1-clabbe@baylibre.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_050053_373119_172585B2 
X-CRM114-Status: GOOD (  10.39  )
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

On Mon, Feb 28, 2022 at 07:40:21PM +0000, Corentin Labbe wrote:
> The rockchip crypto driver is broken and do not pass self-tests.
> This serie's goal is to permit to become usable and pass self-tests.
> 
> This whole serie is tested on a rk3328-rock64 with selftests (with
> CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y)

I previously noticed this breakage on rk3288 but never got time to
investigate (disabling the driver was quicker).

This series fixes everything on rk3288 as well, thanks!

I hit the same warnings as the kernel test robot as well as a missing
new kconfig dependency (see separate reply to patch 10), but this is

Tested-by: John Keeping <john@metanate.com>


Regards,
John

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
