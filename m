Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F20CBC87FCB
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Aug 2025 11:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GMDTqbvr8XTiHFdJSuEp/3k6opVGvYLLxvwY5YlYxNI=; b=0i/4Lhw0LRqdhD
	ratRqYP3tNEQzvMltVeLMlHXErCiTjZttVqtDmC41ssmmyTZo2n3EryXKfHFlDGIQnLE+kb+oVjHc
	Ca5L6Xq3SsGt+ZfZ9xVZSEvJj6dUgTG9ciLs1hnIa+4UU/MQz2wKuMuJ6ycw05ZT/a4/2QFJUir6K
	kJQ9vEv+WMXN8mVPk1dY/gLFxI0oj0pD5/2I5qdyim9oCcoC+gBfqb84yyANfO4GDMFP7Wnav60Ii
	jbAztVn1uhsgVr7Vz0gh3cZg2wATRZhwNeLZ4GDJaIU/2byOx6qk5iTzzY8VvGyPrWRvqB4Zv8Wl0
	aiC1nh62iST9sCT1/L6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujFhy-0000000Cam6-1A3M;
	Tue, 05 Aug 2025 11:19:54 +0000
Received: from ni.piap.pl ([195.187.100.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujFbS-0000000CZu0-2WNK;
	Tue, 05 Aug 2025 11:13:11 +0000
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
	by ni.piap.pl (Postfix) with ESMTPS id C8DC9C3EEAC9;
	Tue,  5 Aug 2025 13:13:08 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl C8DC9C3EEAC9
From: =?utf-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>
To: Stefan Klug <stefan.klug@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,  Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>,  Heiko Stuebner <heiko@sntech.de>,
  Paul Elder <paul.elder@ideasonboard.com>,  Jacopo Mondi
 <jacopo.mondi@ideasonboard.com>,  Ondrej Jirman <megi@xff.cz>,
  linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: FYI: i.MX8MP ISP (RKISP1) MI registers corruption
In-Reply-To: <m34iumujcs.fsf@t19.piap.pl> ("Krzysztof =?utf-8?Q?Ha=C5=82as?=
 =?utf-8?Q?a=22's?= message of
	"Tue, 05 Aug 2025 12:57:07 +0200")
References: <m3h5zbxkc6.fsf@t19.piap.pl> <m38qknx939.fsf@t19.piap.pl>
	<175308758352.3134829.9472501038683860006@localhost>
	<m31pq9y98z.fsf@t19.piap.pl>
	<175326599663.2811177.16620980968274114885@localhost>
	<m3h5z2vw12.fsf@t19.piap.pl>
	<175344176070.2811177.10693943493658922992@localhost>
	<m3qzxyug1s.fsf@t19.piap.pl> <m3cy9futcj.fsf@t19.piap.pl>
	<m34iumujcs.fsf@t19.piap.pl>
Date: Tue, 05 Aug 2025 13:13:08 +0200
Message-ID: <m3zfcet41n.fsf@t19.piap.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_041310_798998_DCF9B74B 
X-CRM114-Status: UNSURE (   3.60  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

S3J6eXN6dG9mIEhhxYJhc2EgPGtoYWxhc2FAcGlhcC5wbD4gd3JpdGVzOgoKPiBTRXJyb3IgSW50
ZXJydXB0IG9uIENQVTMsIGNvZGUgMHgwMDAwMDAwMGJmMDAwMDAyIC0tIFNFcnJvcgoKQ291bGQg
aGF2ZSBiZWVuIFBFQktBQywgdGhvdWdoLgotLSAKS3J6eXN6dG9mICJDaHJpcyIgSGHFgmFzYQoK
U2llxIcgQmFkYXdjemEgxYF1a2FzaWV3aWN6ClByemVteXPFgm93eSBJbnN0eXR1dCBBdXRvbWF0
eWtpIGkgUG9taWFyw7N3IFBJQVAKQWwuIEplcm96b2xpbXNraWUgMjAyLCAwMi00ODYgV2Fyc3ph
d2EKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
