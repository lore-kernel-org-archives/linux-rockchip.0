Return-Path: <SRS0=igfw=CP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C253C43461
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Sep 2020 13:27:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8D6C020796
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Sep 2020 13:27:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="FCYTOo0n";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8M9yC8D"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8D6C020796
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l+dZOyn2JMz4sjaGvL7pw5FInV/vPDCdiQ9jN4sMv5M=; b=FCYTOo0nzd6YxJ0aSZSKsHChm
	aBQSol6o5b+UVGUCNr4lRoreqIrkOi9DTw2yVB7CPQBJO9CXUgJL5r+K+Uc5H2BDph8ObbYTk/XN7
	55NoUW1jEk4iwq8QkoN2N9t22durXpvq3l3aZngU6iT3K9RRUS2EDOaLYWc9n8P3HWvE02W/B3uLj
	JQdQrS2jXcFS7VhhXp2fRQ2695BOHtmAn/mtZuZbH3CSfsLbhvdKQSsFsgk198UXX4JbXp9TBnVKJ
	X5UjJQKlZuly5F9HN+maZsVnjUnzo1bgB1RlkV80wEqBL/pG/DtB948qmysHHZtqTXilVSJTLdBaG
	AAOTYSz5g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEuhj-0007VK-PH; Sun, 06 Sep 2020 13:27:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEuhf-0007UK-9P; Sun, 06 Sep 2020 13:27:32 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE6D320708;
 Sun,  6 Sep 2020 13:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599398848;
 bh=Jg/ONzkyfeFBjpvfr7GYskrOf0uT3DsXsl8BYu/mmDg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=a8M9yC8Dd5apF5MDYMZgecvVUe/oS6CVtEiYH5Jf2RKAnxqqIjbiU10vUElvQkWH6
 miOlGk9Tf92/BS+a3Pg+pQlJL5l4nsR1k6ToXS/LVscdh2PmUPvxIFKo6OC2XSXB9w
 v8urqfH3XfAUsVDjtbAMs0Fx24BjJQu6lRXLAH/Q=
Date: Sun, 6 Sep 2020 14:27:21 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Subject: Re: [PATCH] iio: adc: rockchip_saradc: Allow compile-testing with !ARM
Message-ID: <20200906142721.73a533dd@archlinux>
In-Reply-To: <1602652.ZmzXO7uU3z@diego>
References: <20200904170416.16061-1-alex.dewar90@gmail.com>
 <1602652.ZmzXO7uU3z@diego>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200906_092731_471953_9A75B1E4 
X-CRM114-Status: GOOD (  19.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Alexandru Tachici <alexandru.tachici@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Saravanan Sekar <sravanhome@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Vincent Pelletier <plr.vincent@gmail.com>, linux-kernel@vger.kernel.org,
 Beniamin Bia <beniamin.bia@analog.com>, linux-iio@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-rockchip@lists.infradead.org,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 Alex Dewar <alex.dewar90@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Artur Rojek <contact@artur-rojek.eu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCAwNCBTZXAgMjAyMCAxOTozMjoyMiArMDIwMApIZWlrbyBTdMO8Ym5lciA8aGVpa29A
c250ZWNoLmRlPiB3cm90ZToKCj4gQW0gRnJlaXRhZywgNC4gU2VwdGVtYmVyIDIwMjAsIDE5OjA0
OjE2IENFU1Qgc2NocmllYiBBbGV4IERld2FyOgo+ID4gVGhlcmUgc2VlbXMgbm8gcmVhc29uIHRv
IGFsbG93IGZvciBjb21waWxlLXRlc3Rpbmcgb24gQVJNIG9ubHksIHNvCj4gPiByZW1vdmUgdGhp
cyByZXN0cmljdGlvbi4KPiA+IAo+ID4gQnVpbGQtdGVzdGVkIHdpdGggYWxseWVzY29uZmlnIG9u
IHg4Ni4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQWxleCBEZXdhciA8YWxleC5kZXdhcjkwQGdt
YWlsLmNvbT4gIAo+IAo+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNo
LmRlPgpBcHBsaWVkIHRvIHRoZSB0b2dyZWcgYnJhbmNoIG9mIGlpby5naXQgYW5kIHB1c2hlZCBv
dXQgYXMgdGVzdGluZyBmb3IKdGhlIGF1dG9idWlsZGVycyB0byBwb2tlIGF0IGl0IGFuZCBzZWUg
aWYgd2UgbWlzc2VkIGFueXRoaW5nLgoKVGhhbmtzLAoKSm9uYXRoYW4KCj4gCj4gPiAtLS0KPiA+
ICBkcml2ZXJzL2lpby9hZGMvS2NvbmZpZyB8IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
aWlvL2FkYy9LY29uZmlnIGIvZHJpdmVycy9paW8vYWRjL0tjb25maWcKPiA+IGluZGV4IGQ5NGRj
ODAwYjg0Mi4uMDM5Mjk2MDZiYjAxIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9paW8vYWRjL0tj
b25maWcKPiA+ICsrKyBiL2RyaXZlcnMvaWlvL2FkYy9LY29uZmlnCj4gPiBAQCAtODYzLDcgKzg2
Myw3IEBAIGNvbmZpZyBSTjVUNjE4X0FEQwo+ID4gIAo+ID4gIGNvbmZpZyBST0NLQ0hJUF9TQVJB
REMKPiA+ICAJdHJpc3RhdGUgIlJvY2tjaGlwIFNBUkFEQyBkcml2ZXIiCj4gPiAtCWRlcGVuZHMg
b24gQVJDSF9ST0NLQ0hJUCB8fCAoQVJNICYmIENPTVBJTEVfVEVTVCkKPiA+ICsJZGVwZW5kcyBv
biBBUkNIX1JPQ0tDSElQIHx8IENPTVBJTEVfVEVTVAo+ID4gIAlkZXBlbmRzIG9uIFJFU0VUX0NP
TlRST0xMRVIKPiA+ICAJc2VsZWN0IElJT19CVUZGRVIKPiA+ICAJc2VsZWN0IElJT19UUklHR0VS
RURfQlVGRkVSCj4gPiAgIAo+IAo+IAo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
