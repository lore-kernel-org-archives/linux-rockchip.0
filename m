Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C658BD116F3
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 08:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pabvv6xpP5KxZX6BPsw1vfjsK2/QzGKE+iaWUlddOp4=; b=vpkPpYLwQPyO0R
	KWUjw5hkRBKFRLc4OZbVQXu2EcEKQuXx9L5oL4FTWrzhQbhD2v45PTzw1WvS63kJrv6sg4OrNqKHk
	ulAfuozNZwu7JksFkUyBzxpDeGdhiD6nlT+0PhwIN+UdNYVVsuvQowfLcORWDHh8Pv1wnHBkfYxu1
	AsqAqRKnBLkt+YNPKzuc0l6bMdshf50h13+MGO5TOPfRtdcATNA0mQ8mpRzQNUjeuXusYVD30XfqJ
	hIxXs2FQMuQ8q3KmeKWQNoDC+E7wNCD+4qpdgoNl8LEpBajq2DnY1twYlaYssHix3h2csu2s4WRYl
	R9d3Eag8figbZvaxNlPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQiVF-00000006KTr-3Rjc;
	Wed, 03 Dec 2025 08:46:25 +0000
Received: from smtpbgsg1.qq.com ([54.254.200.92])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQiVC-00000006KT8-2H0j
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 08:46:24 +0000
X-QQ-mid: zesmtpgz1t1764751513t925558f6
X-QQ-Originating-IP: kA8tgwJS3CBFa2EWDYyAwWMp3ngsWLwaWP8Wxv67F7E=
Received: from [192.168.254.128] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 03 Dec 2025 16:45:09 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8437548428152066344
Message-ID: <206BC4BB06898B7D+3cb294a2-5e06-41f1-83da-714e810d0d95@radxa.com>
Date: Wed, 3 Dec 2025 17:45:09 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND2 PATCH v5 0/3] Add Radxa CM5 module and IO board dts
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de,
 jonas@kwiboo.se, kever.yang@rock-chips.com, inindev@gmail.com,
 michael.opdenacker@rootcommit.com, dsimic@manjaro.org, pbrobinson@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251202084052.1517-1-naoki@radxa.com>
 <185BFDE915D4629C+83d852ac-617c-48a0-aeba-a881e3542e78@radxa.com>
 <CALWfF7+ESPGscJNrxxSEyNmJsFTRDM2crjAduiCfqaMUETd2_A@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <CALWfF7+ESPGscJNrxxSEyNmJsFTRDM2crjAduiCfqaMUETd2_A@mail.gmail.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Np41pleoJw3mcCAJr+nfuPWnnCdgluSGpawpi3K5wOgRqh3cdOgG/e5+
	fDVFkmrxgKnFm2lXuGGhayZ/kAf43JEKbPxm6s94b1xc+TQixTE2ynMC2LR0Hb0rjRPWYJR
	Ygaf3iXnoObY21+W5lUbRzonPTBD2B9pmXySHJbyZgbMY6BUarYpeF48zUnYrPNe4rqpgNB
	IsQgSnM0d+QEgTQpFa+1bo3f3yOSJpgiL8hWBP5RfPI8f1vBh2i7XzFyTHKQ8JtmgjFRzsc
	B/a+b7GbnLPzhRtlnM0BrT6HE+PPV73WH/iHGPGyhVfyzuQzj3zXzoL63cNBFyv8EgRkpu7
	4ty+dZwZo6hDgghdp0rk/kVpj44+DKneVxu4agT7IdCfNtqcteMb/c87Ny5H2+L3LXQVsj/
	galmKCoRFZL1sBHdQxqjdzCJYiEhqIJGnw5+YuYlwYiu5H2MPC9/wmatwdvqT7NyqAgBfa8
	UP57dx1mKyxgzZh5pqrfCYlUKjfv6kF54BxQSgfDuS+KRmj2ViGc09TymciW6Fe85SZyGeO
	OpxeWF0Z7SvIneyp63dL2Gkoyy7S3RXqRmpq4hJEtYO7Eh2uxxFsw5uM1mFHlCSFtZENrmn
	rogNB36OjjFu4qMB6XI87QSmpKfsEFK8ddcJfja8Rc+5O/5D8Pnv9/N2cVpF/kHEJ5r42qj
	xyu35uKMvzMkkAHjsYyvEopKoQY+TpJM3NwxB5jw35Y0mKnIp4/tvPhhb4LtSPPYsou023w
	mucNLiBF1qqsVuXezhrxMUCYm6nC2Im16NJtdtucN/rtge7Nkx1l+BBGbvqn7u2I3R97ho0
	MX3QKupzltT6FexwsNiTvWsHoEKTE/Sz0jVVA2ep57j9hVNKUHQPChNbhKE2Umj+okMj1Aw
	L5BNdSWjp0wFqdCUqI0ZEnWNaH5s2X1D7JdK9D0eXgnnULA7YNb6VDxNuTFte7e2fbygMOG
	eeszcTJZnaGxeb4E7kBEf65zxMmpPQxxolAlJB9efbfXnzftZQt174AOuBHQijjcHuaJCd3
	iqm/xTtw==
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_004622_978299_02D774BE 
X-CRM114-Status: GOOD (  11.65  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSmltbXksCgpPbiAxMi8zLzI1IDE0OjQyLCBKaW1teSBIb24gd3JvdGU6Cj4gT24gVHVlLCBE
ZWMgMiwgMjAyNSBhdCA0OjE24oCvQU0gRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPiB3
cm90ZToKPj4KPj4gSGkgYWxsLAo+Pgo+PiBJIHNpbmNlcmVseSBob3BlIHRoZSBmb2xsb3dpbmcg
d2lsbCBiZSBoZWxwZnVsIGluIHlvdXIgcmV2aWV3Lgo+PiAgICBodHRwczovL2dpdGh1Yi5jb20v
UmFkeGFOYW9raS9saW51eC9ibG9iL2NtNS1pby12OTk5LTIwMjUxMjAxL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4cy1yYWR4YS1jbTUuZHRzaQo+PiAgICBodHRwczovL2dpdGh1
Yi5jb20vUmFkeGFOYW9raS9saW51eC9ibG9iL2NtNS1pby12OTk5LTIwMjUxMjAxL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1yYWR4YS1jbTUtaW8uZHRzCj4gQ291bGQgeW91
IGVsYWJvcmF0ZSBvbiB3aHkgeW91J3JlIGxpbmtpbmcgdG8gdGhlICJ2OTk5IiBicmFuY2g/IFRo
ZQoKV2hlbiB5b3UgcmV2aWV3IHNvbWV0aGluZyAoZS5nLiwgdjUpLCB5b3UgbWlnaHQgZmluZCBp
dCBoZWxwZnVsIHRvIHJlZmVyIAp0byBhbm90aGVyIHNpbWlsYXIgdGhpbmcgKGUuZy4sIHY5OTkp
LgoKPiBjb250ZW50IG9mIHRoYXQgYnJhbmNoIGRvZXNuJ3QgbWF0Y2ggdGhlIGNvbnRlbnRzIG9m
IHRoaXMgcGF0Y2ggc2VyaWVzCj4gKGkuZS4gUkVTRU5EIDIgb2YgdjUpLiBUaGUgInY1IiBicmFu
Y2ggbG9va3MgY2xvc2VyIHRvIHRoaXMKPiBzdWJtaXNzaW9uLgo+IGh0dHBzOi8vZ2l0aHViLmNv
bS9SYWR4YU5hb2tpL2xpbnV4L2Jsb2IvY201LWlvLXY1LTIwMjUxMjAxCj4gCj4gQ29tbWVudHMg
b24gdGhlICJ2OTk5IiBicmFuY2guLi5pdCBkb2VzIGhhdmUgdGhlIGltcHJvdmVtZW50czoKCllv
dSBkbyBub3QgbmVlZCB0byByZXZpZXcgdjk5OSwgYXMgaXQgaXMgbm90IHBhcnQgb2YgdGhpcyBw
YXRjaCBzZXJpZXMgCihpdCBpcyBKb3NlcGgncyB3b3JrKS4gUGxlYXNlIG9ubHkgcmV2aWV3IHY1
IGFuZCBzdWJzZXF1ZW50IHZlcnNpb25zLgoKPiAtIHRoYXQgYWxsb3dzIHRoZSB1c2FnZSBvZiB0
aGUgUmFkeGEgZU1NQyB0byB1U0QgYWRhcHRlcgo+IC0gZGVmaW5lcyB0aGUgZ21hYzEgaW4gdGhl
IFNvTSBkdHNpLCBidXQgb25seSBlbmFibGVzIHRoZSBnbWFjMSBpbiB0aGUKPiBJTyBib2FyZCdz
IGR0cy4KClRoYW5rcyBhbnl3YXkuCgpCZXN0IHJlZ2FyZHMsCgotLQpGVUtBVU1JIE5hb2tpClJh
ZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQuCgo+Pgo+PiBCZXN0IHJlZ2FyZHMsCj4+
Cj4+IC0tCj4+IEZVS0FVTUkgTmFva2kKPj4gUmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4s
IEx0ZC4KPiAKPiBKaW1teQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
