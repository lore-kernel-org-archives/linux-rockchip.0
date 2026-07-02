Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5BAAC44501
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 15:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Mime-Version:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XpgIqvC35llhayHzOsKXJnEluOgNV5MZqOgu1RCY4tU=; b=aOUzL7+g23g9lt
	3AJIY0JQ9ftZlH59jBGLFPcw0jr2XXn+2PJrYawAa6v7k5q+Pa5LvkAKouQbGjCMBcrNoMJD5F3ER
	K+Zt8HHzhLzIUTx+5trBQhiC9qqBNlpHPHaX5fTOkorwJmVnn36mrHp5vSuIZeEeimPDRholXtfIg
	1wI6psJxCV2ESPFkOhSZxDP9vl67+2rB5fbgYTQTtUXcI5dnz7N6zK/TQg0WKY/Je+JEKIFziEqIn
	WwxiKOAfnRcuOOaFKdDlP2S7w/IprvAuzpILEaUPHOw/60wclAuk2zkh4L1W9HqrvdCpjJN6D55Eb
	EOpNwtE8rETqxFgQl8aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7lx-0000000FJLj-3Pln;
	Tue, 07 Jul 2026 15:31:45 +0000
Received: from out162-62-58-216.mail.qq.com ([162.62.58.216])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf7Yv-00000003S21-3oNU
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 02:54:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1782960835; bh=JGJIGU/YRV1OcQsRUiuMDIKLDqsz1oM2SvY1he2YuL8=;
	h=From:To:Cc:Subject:Date;
	b=ncXt4l7jbmCEHixRWamZK8J79PRis7V23z5lqLtnod7WBJ9XNcAgZjpbaDCAHDUPP
	 r2Dc1bts5KoqMIkkCdVAbuc8A60sjxzvF5+ehEeyOGvU+RCiSN2y1eLc0B/+hPPCPj
	 uVAdNFpvsJbN1BjyvJLr/eBZbDnRbqPc7iApYw60=
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-QQ-XMAILINFO: N2nZekq4carkUlQ39untDC57buGLnHuS/eryVQoQkd343L3M7urja8FfELAjYH
	 +Y1DjiEfdZl9u+IrTlAqw1C5s7ZkypGAjQmeHYE9eQh+1IHHjYkl5XnvKQJnzpdOVurwElBLskKAV
	 OY8uDWwoy2XteftY02Aj3r1bmyR1X8NB9dMJzJEvRUAKqFOKoc3u6SXUUeFLUDWRrPgrUZMvAxqQ+
	 DP4nxOi7SEWjpeqRpsQEHNHyOMmR6ov7vGGrqlGUU8bHD3Xv8JS8JNqRadCvAUHJ9k7u+pfJvBzmq
	 zaakHhUOBKwkmA1+xLYDBuX6FAZluhb/0FU6WhBoEg68+YU67MDhk6XOcOQb8uHhk5xvrDVbRXNYb
	 Xm+jN0BPv9NAcDz+T9tk+pBD1Z2rT7Fgnw0eWU8T6FqkrVRHeVk4QapgjhVxBy8OigHeWxKn8MqYf
	 3nN7bCYkGQmzfzEVl0EhpYAWC7ErwAukZuVpQbgCljWmkJwURGcaKaV6ebv/3hhjCcSqD6VaqIHRE
	 soXapQ1M22WpAcfVN2dY2EeaCfrON82LOxXFug+ZqdA0JPl0YvzbPuj9kQ/uP8ExE7H6A/6MIwxnj
	 ss2KmVkOeIpVdApgWD1izE3AjeLwfnnE/vavnfTLZsGNxPeK8fNRqZHNBnKbbzD+h2D1zhfDbgLq8
	 /i4ljk2FY97oI530A3x2H20a0Q9JLlc1hi8bxhpxgDP5TdCr2sP69sjueSEBi+fKyFg2kpTb9HC7O
	 c1wz8380hwnjO9rjwUDpxOc2TBbKMcrZ+quF7ckUcIZl9g5D81Y9HZWc5a3y5ACempOkuUiMlygks
	 pg+Kk7IHCHjeL93f3aFxfxOcJwlLYPgmJ4L6uOAoosaNPYostXIOtGJCqBFR4fe0bBg12WzF0sFN4
	 oYMRrfABgCumteMyrk0TRKQGIx9g7NV6rC2/krQpWI4n2CSX8IdHW82PCOFSDdMOi8CMWeGuaZjIA
	 yuVedc2cqyKTuK55JvumSfoem6TGlCqy8dZZ867nMMHoHRuCM5OQ/1Dneb5eRiRTd9bWnki2kKb4T
	 qJlB8sKIeBV3s+m7wiNfp0bIZADrl2RA8/YUv/uqFsmvud2Gu0c1+G7Ilgph5byEK2E5jIfdUIVOd
	 bcLJ37jGaJJlmQ==
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>
Cc: "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?cm9iaA==?=" <robh@kernel.org>, "=?utf-8?B?a3J6aytkdA==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Y29ub3IrZHQ=?=" <conor+dt@kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] can: rockchip: add RK3588 CAN-FD support
Mime-Version: 1.0
Date: Thu, 2 Jul 2026 10:53:53 +0800
X-Priority: 3
Message-ID: <tencent_534F9A1699EA04B091BF8003C479BFA32607@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-mid: xmsezb41-0t1782960833tm1iad0r7
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_195402_514680_B7F17B38 
X-CRM114-Status: GOOD (  21.07  )
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

Hi Heiko,

thanks for the guidance, and thanks for leaving this to me. :-)

> I don't think we need two people working on this and you did the better
> investigation into the differences, so you should get the credit :-)
>
> So I guess my preference would be to:
> - pick up the erratum 6 into your patch
> - add my haikou patch to the series - that way we also get a user
> - handle Krzysztof's comment from
>   https://lore.kernel.org/linux-rockchip/20260701-sensible-cryptic-ocelot-58035b@quoll/
>
>   as both our bindings have the same structure, so I guess it should be
>
>     oneOf:
>        - enum:
>              rockchip,rk3568v2-canfd
>              rockchip,rk3588v2-canfd
>        - items:
>            - const: rockchip,rk3568v3-canfd
>            - const: rockchip,rk3568v2-canfd
>
> And submit that as v2.

That works for me. I will prepare a v2 with:

- the binding schema changed to use enum as suggested by Krzysztof
- RKCANFD_QUIRK_RK3568_ERRATUM_6 enabled for RK3588v2
- your Haikou patch added to the series

> But if it actually works, then personally I'm more than fine with
> enabling CAN-FD :-D .
>
> I guess Marc might have more insight where the FD issue triggered on
> the RK3568.

I will also double-check that CAN-FD still works with the v2 changes and
wait for Marc's feedback on the CAN-FD issue before deciding whether
RKCANFD_QUIRK_CANFD_BROKEN should stay disabled for RK3588v2.

Thanks,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
