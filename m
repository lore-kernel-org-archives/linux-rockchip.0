Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0329C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 09:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JugDb70fc9d6fBHrGT12PutnAzWc5l/+V+GAneSt3AI=; b=Qc2izffzWK2QYE
	NAWwjoMSae1spuYszA5TZuMoX2SYQzajZvi7VUWNbSJlGSdJ/tQ6qKcoxMvTYmJ1rK1fzkUJIgAqk
	jAy9ANz+W3GckDD9AAtSEXfEaUrzLgy+CZqZjo4v4+PTkWx/U3rx5RVT8btVenBpWcEm1+o6W3Tla
	C+wp4O48BNLAa60XRaZoewhVBrKyxMWml77/nKnJ5HINLt+pePkTrQLhlivg2FgOpQYkwYBKGtoL2
	j3bud/L3Ck4I1k7Rsisc75Y4nNCsHi8s/U6bomGUm+OnuFnw1Yy7sYeH4JEkZKED12QydggKrwoMC
	lIoq53HQZ+WmP2kLycSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nD0uT-00EqZb-GS; Thu, 27 Jan 2022 09:17:41 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nD0u8-00EqSv-Kk; Thu, 27 Jan 2022 09:17:22 +0000
Received: by mail-lj1-x22d.google.com with SMTP id b14so3421336ljb.0;
 Thu, 27 Jan 2022 01:17:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=o4tzvhRV4q0XUKGJ8dgFWjAQjVrEQUydtT8zgZxL6O8=;
 b=hq//Oqh0t+LSYYD1W8tLiNbrtErl4z04ToDVMhWDciUtnz4MvYE3C/XQerx/hVMak7
 pwOW0rfdWEQhwYFf8M1aNZY0lyBUyWMXLUTOcJEYYcSA0wFi3qlvUlkRR0vN6j5pcOpd
 vXAtC6MaXS9aLuRAp2U7fUJvRGZiN5pfFD7LCHzcrZQmhU3vuqp+7x+jw3Aoyx+UcdYO
 zXamjSlU6Y/12mh3aXhyVhRvqVIXiN3qsqyDfakUk/305hnkXwCW9KtRAbCICc2boKAI
 mEolgGsO8uEF4PQoEZS3Zh6PJzSYvyoSfgahPlrTSbwyPq3UKjdeI8y2XBkcEXic8GSD
 gcaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=o4tzvhRV4q0XUKGJ8dgFWjAQjVrEQUydtT8zgZxL6O8=;
 b=bTY+yfh6wA5ot0Ir6/sJw7aWzfCT+oM+YvdVrtr5f5sUNMUzZ2JIeiSxMdM5tC7d4+
 YnJwtemiXqcqoizCqHBC8dKpcdm0j23Y+/dgc4Yv52Yj1PP82tM6Z4Vrp2M0ixFyhUQh
 QeDMoZlCHy4fHM1GcnpH+F0BBrvYiMR+Lf96HEmLpf2FAyfw97X0xHG+ImZAFgQjHyK/
 GVY22iq3MQK1ifJe8MmEB+DV9dQaZppxGbn9Ti75ulH93KYfBWVyQNMT+k7xpNfVMkrZ
 XxSoXbsim0Ga1Kkdb2F78+nBxbklS2ozOlP8UKjYLp4nO7dpjiGVquDM1fQ0TV4WAUor
 WxlA==
X-Gm-Message-State: AOAM530P/Dt01siXZvgPX5BorO/Oe4dhlED0xieM24UNwDiRcCYHk0Lc
 o2zZuZJfFdl0/fIDQbU54og=
X-Google-Smtp-Source: ABdhPJyrAxTqYqNo/buunWM+RzljgXBFTNIVZZSw0F9X8RJg2othqm6DAnqjvIzcGTTV7CqWTXsneA==
X-Received: by 2002:a05:651c:d2:: with SMTP id
 18mr2131144ljr.399.1643275037959; 
 Thu, 27 Jan 2022 01:17:17 -0800 (PST)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id h28sm1597872lfe.196.2022.01.27.01.17.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jan 2022 01:17:17 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH 27/27] drm: rockchip: Add VOP2 driver
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220126145549.617165-28-s.hauer@pengutronix.de>
Date: Thu, 27 Jan 2022 10:17:13 +0100
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 linux-rockchip@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Message-Id: <6588D77C-D3CB-4FB0-8B00-5EDD6ABD6923@gmail.com>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-28-s.hauer@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_011720_747562_B2B24795 
X-CRM114-Status: GOOD (  16.43  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

U2FzY2hhLAoKRllJIApzbWFsbCByZXBvcnQgcmVnYXJkaW5nIDRrIG1vZGVzIHN1cHBvcnQgaW4g
djQ6Cgotb24gcmszMzk5IGl0IGdpdmVzIG1lIDRrIHNjcmVlbiB3aGVyZSByaWdodCB2ZXJ0aWNh
bCAxLzMgcGFydCBvZiBzY3JlZW4gaXMgZ2FyYmFnZQotb24gcmszNTY2IG15IHNhbXN1bmcgNGsg
bW9uaXRvciBoYXMgYmxhY2sgc2NyZWVuIGFuZCBjeWNsZSBvZiBPU0QgbXNnczogSERNSTIgY29u
bmVjdGVkOyBIRE1JMiBkaXNjb25uZWN0ZWQ7IC4uLi4KCkkgd291bGQgc3VnZ2VzdCBzcGxpdCB2
NCBpbnRvIDIgc2VwYXJhdGVkIHNlcmllczoKCi1WT1AyIHN1cHBvcnQKLUhETUkgNGsgbW9kZXMg
c3VwcG9ydAoKQlRXOiBnZXR0aW5nIHdlbGwgd29ya2luZyA0ayBIRE1JIG1vZGVzIG9uIHJrMzM5
OSB3YXMgcmVhbCBzdG9yeSBmb3IgbWUuClRoZXJlIGlzIG1hbnkgZGlmZmVyZW50IHNlcmllcyBv
ZiBwYXRjaGVzIHRvIGFkZHJlc3MgdGhpcyAtIGJ1dCBhbGwgaGF2ZSBzb21lIHN1YnRsZSBpc3N1
ZXMgZm9yIG1lIChpLmUuIDRrIEhETUkgbW9kZXMgd29ya3MgYnV0IGkuZS4gUXQgaXMgZmFpbGlu
ZyB3aXRoIERSTSBhdG9taWMgY29tbWl0cyBpbiBFR0xGUykKSSBkZXZlbG9wZWQgd2VsbCB3b3Jr
aW5nIFsxXSBnaXZpbmcgbWUgcmVsaWFibGUgNGsgb24gcmszMzk5IChpbmNsdWRpbmcgd29ya2lu
ZyBRdCBEUk0gZHJhd2luZyBpbiBFR0xGUyBtb2RlKSAKTWF5YmUgaXQgd2lsbCBiZSBzb21laG93
IGhlbHBmdWwgdG8gZ2V0IDRrIG1vZGVzIHNvbHV0aW9uIGZvciByazM1NjYgX2FuZF8gcmszMzk5
IChvbiBzaW5nbGUga2VybmVsIGJpbmFyeSk/CgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL3dhcnBt
ZS9taW5pbXl0aDIvYmxvYi9tYXN0ZXIvc2NyaXB0L2tlcm5lbC9saW51eC01LjE2L2ZpbGVzLzA3
MzAtZHJtLXJvY2tjaGlwLWFkZC00ay12aWRlb21vZGVzLXN1cHBvcnQucGF0Y2gKCmJyCgoKPiBX
aWFkb21vxZvEhyBuYXBpc2FuYSBwcnpleiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9u
aXguZGU+IHcgZG5pdSAyNi4wMS4yMDIyLCBvIGdvZHouIDE1OjU1Ogo+IAo+IEZyb206IEFuZHkg
WWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPiAKPiBUaGUgVk9QMiB1bml0IGlzIGZvdW5k
IG9uIFJvY2tjaGlwIFNvQ3MgYmVnaW5uaW5nIHdpdGggcmszNTY2L3JrMzU2OC4KPiBJdCByZXBs
YWNlcyB0aGUgVk9QIHVuaXQgZm91bmQgaW4gdGhlIG9sZGVyIFJvY2tjaGlwIFNvQ3MuCj4gCj4g
VGhpcyBkcml2ZXIgaGFzIGJlZW4gZGVyaXZlZCBmcm9tIHRoZSBkb3duc3RyZWFtIFJvY2tjaGlw
IEtlcm5lbCBhbmQKPiBoZWF2aWx5IG1vZGlmaWVkOgo+IAo+IC0gQWxsIG5vbnN0YW5kYXJkIERS
TSBwcm9wZXJ0aWVzIGhhdmUgYmVlbiByZW1vdmVkCj4gLSBkcm9wcGVkIHN0cnVjdCB2b3AyX3Bs
YW5lX3N0YXRlIGFuZCBwYXNzIGFyb3VuZCBsZXNzIGRhdGEgYmV0d2Vlbgo+ICBmdW5jdGlvbnMK
PiAtIERyb3BwZWQgYWxsIERSTV9GT1JNQVRfKiBub3Qga25vd24gb24gdXBzdHJlYW0KPiAtIHJl
d29yayByZWdpc3RlciBhY2Nlc3MgdG8gZ2V0IHJpZCBvZiBleGNlc3NpdmVseSB1c2VkIG1hY3Jv
cwo+IC0gRHJvcCBhbGwgd2FpdGluZyBmb3IgZnJhbWVzeW5jcwo+IAo+IFRoZSBkcml2ZXIgaXMg
dGVzdGVkIHdpdGggSERNSSBhbmQgTUlQSS1EU0kgZGlzcGxheSBvbiBhIFJLMzU2OC1FVkIKPiBi
b2FyZC4gT3ZlcmxheSBzdXBwb3J0IGlzIHRlc3RlZCB3aXRoIHRoZSBtb2RldGVzdCB1dGlsaXR5
LiBBRkJDIHN1cHBvcnQKPiBvbiB0aGUgY2x1c3RlciB3aW5kb3dzIGlzIHRlc3RlZCB3aXRoIHdl
c3Rvbi1zaW1wbGUtZG1hYnVmLWVnbCBvbgo+IHdlc3RvbiB1c2luZyB0aGUgKHlldCB0byBiZSB1
cHN0cmVhbWVkKSBwYW5mcm9zdCBkcml2ZXIgc3VwcG9ydC4KPiAKPiBDaGFuZ2VzIHNpbmNlIHYz
Ogo+IC0gU29ydCBpbmNsdWRlcwo+IC0gZml4IHR5cG9zCj4gLSBEcm9wIHNwaW5sb2NrCj4gLSBV
c2UgcmVnbWFwX3NldF9iaXRzKCkvcmVnbWFwX2NsZWFyX2JpdHMoKQo+IC0gc2ltcGxpZnkgdm9w
Ml9zY2FsZV9mYWN0b3IoKQo+IC0gc2ltcGxpZnkgdm9wMl9hZmJjX3RyYW5zZm9ybV9vZmZzZXQo
KQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
