Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5C62C83F1A
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jul 2025 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ia1QFV3N4DAcyeKYt1gU/Xp6f5Gd4J0Zir6Sur0PNSo=; b=ehWnMlXMweTWsV
	nbve5E8YTjJNjFHVAUuCKQiEuuNzg5AD8J3BLhx/xe3a9oTDwC6Pb0XjlFdwTxu3OywVKRAzirquD
	5TtKMzQqGZjxo49m3xEadO4YGZVsQDXoPwnKh739445kEAQZL1Rw+8tpgKOWqwYdx8ZpsgyTNFZGd
	3hPfKOqcSd63r9bKkR+uJqPjWmhRm3G0qzV63bhrUnYx46rCTk9QM2GaUlp2QERrFJ627yFdr9BD8
	mDXsrJTqptrLidHO5MlC5eSp6FtalVBSZMOlB2Zbb/WyDwPp5IDCZiSwp4sL/oscY7ZKSNZ/3spzl
	WPyA/IQxdnd5gfY8BECQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesFD-000000072U3-48pG;
	Thu, 24 Jul 2025 09:28:07 +0000
Received: from ni.piap.pl ([195.187.100.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uerD4-00000006qM8-2MG6;
	Thu, 24 Jul 2025 08:21:52 +0000
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
	by ni.piap.pl (Postfix) with ESMTPS id C245CC3E4DF2;
	Thu, 24 Jul 2025 10:21:45 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl C245CC3E4DF2
From: =?utf-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>
To: Stefan Klug <stefan.klug@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,  Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>,  Heiko Stuebner <heiko@sntech.de>,
  Paul Elder <paul.elder@ideasonboard.com>,  Jacopo Mondi
 <jacopo.mondi@ideasonboard.com>,  Ondrej Jirman <megi@xff.cz>,
  linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: FYI: i.MX8MP ISP (RKISP1) MI registers corruption
In-Reply-To: <175326599663.2811177.16620980968274114885@localhost> (Stefan
	Klug's message of "Wed, 23 Jul 2025 12:19:56 +0200")
References: <m3h5zbxkc6.fsf@t19.piap.pl> <m38qknx939.fsf@t19.piap.pl>
	<175308758352.3134829.9472501038683860006@localhost>
	<m31pq9y98z.fsf@t19.piap.pl>
	<175326599663.2811177.16620980968274114885@localhost>
Date: Thu, 24 Jul 2025 10:21:45 +0200
Message-ID: <m3h5z2vw12.fsf@t19.piap.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_012150_761449_0E4A4A99 
X-CRM114-Status: UNSURE (   7.90  )
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

SGkgU3RlZmFuLAoKPiBKdXN0IGEgcXVpY2sgaGVhZHMgdXAuIEkgcmFuIHRoZSB0ZXN0ZXIgYW5k
IHNvIGZhciBubyB1bmV4cGVjdGVkCj4gcmVzdWx0cy4gSSdsbCBydW4gaXQgZnJvbSB0aW1lIHRv
IHRpbWUgYWZ0ZXIgYSByZWJvb3QgdG8gc2VlIGlmIEkgZXZlcgo+IGhpdCB0aGF0IGNvbmRpdGlv
bi4KCklzIHlvdXIgY2FtZXJhKHMpIGNvbm5lY3RlZCB0byB0aGUgZmlyc3QgQ1NJPwpJIGNhbm5v
dCByZXByb2R1Y2UgdGhlIHByb2JsZW0gb24gY3NpMCwgaXQgc2VlbXMgb25seSBjc2kxIGlzCmFm
ZmVjdGVkLiBJdCB3b3VsZCBiZSBjb25zaXN0ZW50IHdpdGggTlhQJ3Mgd29ya2Fyb3VuZCBjb21t
aXQgdGV4dC4KLS0gCktyenlzenRvZiAiQ2hyaXMiIEhhxYJhc2EKClNpZcSHIEJhZGF3Y3phIMWB
dWthc2lld2ljegpQcnplbXlzxYJvd3kgSW5zdHl0dXQgQXV0b21hdHlraSBpIFBvbWlhcsOzdyBQ
SUFQCkFsLiBKZXJvem9saW1za2llIDIwMiwgMDItNDg2IFdhcnN6YXdhCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
