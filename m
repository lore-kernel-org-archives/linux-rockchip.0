Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBF26C43458
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 15:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Mime-Version:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FhUiSlkUkfAt8zTobhEYfNDjZilHdnSTPb/puMK//2g=; b=ckMYJfkNaqgmo9
	X2Gec1eggiyFx51daMMtnk+4g2AgAtqcbE/2wgpScTd9uTRgyxkhT+HszMfBFAp6qGFSAkaV4il8n
	qa7U5Oa/DfvCmurkOMbsMrwWNzdb1ZjEOIMqWR+FIIL2B//dORja/mYXCZyHFniCyYdJ4clvYjpoH
	f7uigOVydZ8QbaxZQ5FltuuItFFaAPuzDeplQKPt+lf00NnN8LUpkaIqHbkOGC7tWUwflZ86x3p/P
	0BsFDGYrp2ASGwyqXbtOwwtzInQ4S4286YLo/0E3gh4Rx8JT8UNM2pBWAhtFEUZrNmELxiZZRvAde
	QpENXOz8TwNu7V3ujjxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7mB-0000000FJSF-0u3K;
	Tue, 07 Jul 2026 15:31:59 +0000
Received: from out203-205-221-190.mail.qq.com ([203.205.221.190])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfGnO-00000004SiO-0ZoF
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 12:45:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1782996329; bh=cZ82wpzG4dEDpgB0onYrYhbBV1XpTLYDCKUM8jFjHJ8=;
	h=From:To:Cc:Subject:Date;
	b=Op6buhStP569qBEfpzP0UhRMNSVCuwoSZT4jltHrgHECQAYwoVGJanl70kG2fwHqH
	 GhIja0kxTo7shidJWRJTqmeygYbEVDPrs6bEaRqKlnr6wfbxqiS4Y/vHYwqlqt0E67
	 h7onhiUngpaRdh6Md77BS7FGttZIBA5iSge61Ftg=
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-XMAILINFO: McF9JvsryK5JD7mWECZX57rL5Rprn8Mk7XTA5UJtsp7kYfow6fxNMQoWuwoNn4
	 tVNny0O4V2vpwvGzR8je738IRA73nQ9hA5I5rcMIdTzKVx9EGI1zSQxUlfeg6uNX6coG0Lu0rFrZM
	 Gc2hC1WBmGJS+vZOXQnEEGnrm3PJhaq8gTjLC79BGpyYMM6oSPKeefpCufewFwvgu816KhSivasKC
	 68Zm4+ENlNp2iAdgXSsvyjHmLAhVgSS5v5+CYo38hQpEHAmCY2sDnrhqddBJdT7NNRIGbixFpLUjD
	 7NjyU0kZnFNrO+mnW28uCsZf5ezJwS7kFne5/aQb7ulFhvU9VtxmokbMXBZtQmtMjKf/CtnlPUcRc
	 QMa8jw7A4oA0xECBhNx5+oZqpPVFqOX7uBs1MkcJqDhCl+1pA8y129xhO6bP4x+iCk+kkoh1P70/Y
	 xflsNu4w6e6HRkDFDjzwxHKVdlW7H9IoqWwEslXZxxqYOOnqe3SyMTwZNW3w0CVtKtToykPYHT0Yn
	 kLqkw4s2narZarifHngjrPdFqkge1/1F5HLpjdTxMC2oE3M49xXGn/5M4203ckggz17/d+QEl7IGX
	 mO1VZSp2i1skxVN+4QK+AgcRnH+1jGkdpv8yh4aBSkxfrcn2MMaYhahjahYtxpyrmR8ZovLKRFd3q
	 Gw+/UVFPGGE0JAqe1dLgGYJRRDaCe14wQdiBGlCfzqsqN18MDsA3EU33ecHvh6ggTce5K1E5sLzNB
	 lcvu2q5VJ08cW4lhqGpEchzKAobjVkEltnK4ZZozgEzKxT3UaHIpH2OBBXolwM6/U/m/lp4VJJq8y
	 2tzifYVJXW9X/BPK6fNpVd7iiMmbIrOYzhtAmTETMByvXutnrPpEJ02/pu3/sUS6wB0iW0B/MbO1c
	 OKm6WYyr4dBRmA7AMjJtV/fifAnIdaE8R9gqLQPfD/nqsI2TxO2XU1iRkEeiMQ9JwlJB2QEIgdVWh
	 ix/6ITZu4TUSDeQcfFBcwXRnTzupl1aSIoKu0GS6FBL8kFlI3DzzZBijXcnkyg4in4sDL6FxBxPT5
	 ddNgfrREJIzrdxV1gFatoJa7EzOOHwf6iAM/phNxLQMe3rNzg+YD+R9SdvA==
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>
Cc: "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?cm9iaA==?=" <robh@kernel.org>, "=?utf-8?B?a3J6aytkdA==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Y29ub3IrZHQ=?=" <conor+dt@kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] can: rockchip: add RK3588 CAN-FD support
Mime-Version: 1.0
Date: Thu, 2 Jul 2026 20:45:27 +0800
X-Priority: 3
Message-ID: <tencent_2AA2119D8067447DBFA826619A5419878407@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-mid: xmsezb41-0t1782996327t5ajzis1k
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_054534_515272_D33768CA 
X-CRM114-Status: GOOD (  13.07  )
X-Mailman-Approved-At: Tue, 07 Jul 2026 08:29:51 -0700
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

Hi Marc,

thanks for the feedback.

> Then CAN-FD is broken. :/
>
> Maybe in a later patch we can hack something, to allow working
> configurations.

Understood. I will keep CAN-FD disabled for RK3588 in v2.

I will also try to investigate whether the failing BRS/data-phase setup
can be fixed. If I can find a proper fix, I will send it as a follow-up
patch instead of mixing it into this v2 series.

> Can you update the description of the quirk for the rk3588 and add how
> to reproduce it?

Yes. I will update the RK3588 quirk description and add the reproduce
steps for the BRS/data bitrate issue.

> Please keep it disabled for now.

I will keep RKCANFD_QUIRK_CANFD_BROKEN enabled for RK3588 in v2, so
CAN-FD stays disabled for now.

Thanks,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
