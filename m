Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32C34C04A95
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 01:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzmpPu8Y3FCNSSEjwI6YKElcclcczAXtL4Cc0cwfCYk=; b=4GPTtvc3QoDYuQ
	xYAK6VFW8RKDdxjDf0H+o2nhB2v+cZUtL1P4jBPjsMvk3/fE2UtZRs1V1+Kvx+z8hFQInRXLcyvcU
	ZdUii2nijrg4Ho+c+3ZlNU+PthRWyByQy8gaIeGcSnWheh5eEKk6h9Z2OBlU0xiTBAoTYD5N5aRga
	XhxKCuacfYAo4pF7vScC9b/guIn2bmxEvV0W2Gq5a9WwG2JcIfZ7a8NUYsAdPkcL0CWI84vzi+XK4
	nKT4xWjHxRPzA9olcU5YJf8xoDVCoEbMyF0NzV1ULAESqOPDsnVya/yx4SkFkEtgRBJC2giKuZ3r8
	FHIEZfZjYXopzoNLhbEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocd9o-000msE-01; Mon, 26 Sep 2022 01:43:40 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocd9k-000mqp-Mz
	for linux-rockchip@lists.infradead.org; Mon, 26 Sep 2022 01:43:38 +0000
Received: by mail-wm1-x332.google.com with SMTP id d12-20020a05600c3acc00b003b4c12e47f3so2915839wms.4
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Sep 2022 18:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=TXypzlgba8Zg3Bw+ufq5o3Y7uUVrGlJmf5mQqKp3w8E=;
        b=AXPxiZpebfmDuNVIIpFcl61O6FMrbNWBmHwpS/s9kimT/KmoHFSK0xzsJsLQFOv5RO
         zXQi332g+PC4JIz5hRD93r95j5P+w2jzfnqklen0MZ4WjkfA+g4Hv1AHvoxZ28DDPVwf
         W5bbsiUP01wXZh+3P7JTvV7sGLT1hCdmjFViUOnOpxSBEBuGrXYMa7EzAJUgkdZ2qEts
         BEbQ2EijoF7n4RbSUsok/5pwf+Q1uvPsmEAyVF8g9b7+7K94m1euEqo2jlxHJuQrm9UG
         p8saAI0pHn5U7oxS2QHDmqG/lP6JINOmTS7J3autxovS/tY2gqDkcvVnQeeK5l8o01Lt
         Brjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=TXypzlgba8Zg3Bw+ufq5o3Y7uUVrGlJmf5mQqKp3w8E=;
        b=bHO/b7xGvk8Nmy76g+GSz9qmjZ/uKw1QNu77zFiXmNvAB/7M6nPk6Z0x90MQs1aNx9
         tJMZdeyCGTvo9o+Lq9BzDpubxvP6GyKKU9cpZqY41KV2z2CysogeTFxLNjhHWBV1oy22
         R943HEdXEPKgikIShdSuZkOhQ/rjEEewsQFtn6C4ucharOAZKHvDpnZn+/XhDWktvNQL
         +knjX09TX3CGb872mPNWqNUwcyuvYV9yBtelY5f0bCn9aW+YXwDdK4ba7qmcfx4s1VbV
         y0s/4HT+oa4Th/j5gk0Wh64Wp9tCy8R1dXnUS/RUPnYN5xE3jpYYOXjS6YIb4ar58v/2
         1BfA==
X-Gm-Message-State: ACrzQf0nGxgNzQCl87CpS6vu6iI7iQYi7Sk4RqQ3j3XyKk+IprhiTfxg
	SkFgneDaozJsXRJ2ZaE9eaBLjK4PZB+H/4vovS4=
X-Google-Smtp-Source: AMsMyM4uXxdw8hSXJcrKU7D1Irudn2PDOysdVx3GKVPXMGmyCViP+I4gZVoaoykVuRFCp5DJxEMVLwTYBkpRthQLEN4=
X-Received: by 2002:a1c:ed11:0:b0:3b4:d3e1:bec with SMTP id
 l17-20020a1ced11000000b003b4d3e10becmr13251362wmh.196.1664156613212; Sun, 25
 Sep 2022 18:43:33 -0700 (PDT)
MIME-Version: 1.0
References: <4f398e4c-973b-7843-2f75-27324d109277@linaro.org>
 <CAOf5uwnfCCwHjSXTurMtyEpZc_tF8bH=fxfwBzOtHcfM_S4tYg@mail.gmail.com>
 <CAOf5uw=_+WQO7qH_Bxs5qEBn2_nemzuLiXdYe8+W_+OnFZNYkw@mail.gmail.com>
 <fb52982c-745e-ef9b-6258-0870d00a744b@linaro.org> <CAOf5uwnVZxYGDfph6wKKpF413obt3786WPMn8mnSdizKe=XkzQ@mail.gmail.com>
 <ebca0c67-43f6-ce57-372b-f6ddaac69914@linaro.org>
In-Reply-To: <ebca0c67-43f6-ce57-372b-f6ddaac69914@linaro.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 25 Sep 2022 21:43:20 -0400
Message-ID: <CAMdYzYrqVSNmOASDUXK0MaJVy56gmRkHweb9Bs7J76O4HZn2NQ@mail.gmail.com>
Subject: Re: v6.0-rc6 - arm64 / rock960 : kernel panic
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: "Heiko St??bner" <heiko@sntech.de>, Samuel Holland <samuel@sholland.org>, 
	Vinod Koul <vinod.koul@linaro.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_184336_794097_32887959 
X-CRM114-Status: GOOD (  13.79  )
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

T24gU3VuLCBTZXAgMjUsIDIwMjIgYXQgNTo1MSBQTSBEYW5pZWwgTGV6Y2Fubwo8ZGFuaWVsLmxl
emNhbm9AbGluYXJvLm9yZz4gd3JvdGU6Cj4KPgo+IEhpLAo+Cj4gYWZ0ZXIgYSBwYWluZnVsIGdp
dCBiaXNlY3QsIHRoZSBrZXJuZWwgcGFuaWMgaGFwcGVucyB3aXRoOgo+Cj4gY29tbWl0IDhkYzYw
ZjhkYTIyZmRiYWExZmFmY2ZiNWZmNmQyNGJjOWVmZjU2YWEgKHJlZnMvYmlzZWN0L2JhZCkKPiBB
dXRob3I6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+Cj4gRGF0ZTogICBUdWUgSnVu
IDIxIDIwOjMxOjQwIDIwMjIgLTA0MDAKPgo+ICAgICAgcGh5OiByb2NrY2hpcC1pbm5vLXVzYjI6
IFN5bmMgaW5pdGlhbCBvdGcgc3RhdGUKPgo+ICAgICAgVGhlIGluaXRpYWwgb3RnIHN0YXRlIGZv
ciB0aGUgcGh5IGRlZmF1bHRzIHRvIGRldmljZSBtb2RlLiBUaGUgYWN0dWFsCj4gICAgICBzdGF0
ZSBpc24ndCBkZXRlY3RlZCB1bnRpbCBhbiBJRCBJUlEgZmlyZXMuIEZpeCB0aGlzIGJ5IHN5bmNp
bmcgdGhlIElECj4gICAgICBzdGF0ZSBkdXJpbmcgaW5pdGlhbGl6YXRpb24uCj4KPiAgICAgIEZp
eGVzOiA1MWE5YjJjMDNkZDMgKCJwaHk6IHJvY2tjaGlwLWlubm8tdXNiMjogSGFuZGxlIElEIElS
USIpCj4gICAgICBTaWduZWQtb2ZmLWJ5OiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29t
Pgo+ICAgICAgUmV2aWV3ZWQtYnk6IFNhbXVlbCBIb2xsYW5kIDxzYW11ZWxAc2hvbGxhbmQub3Jn
Pgo+ICAgICAgTGluazoKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjIwNjIyMDAzMTQw
LjMwMzY1LTEtcGd3aXBlb3V0QGdtYWlsLmNvbQo+ICAgICAgU2lnbmVkLW9mZi1ieTogVmlub2Qg
S291bCA8dmtvdWxAa2VybmVsLm9yZz4KPgo+IFJldmVydGluZyBpdCBmaXhlcyB0aGUgaXNzdWUK
Ckdvb2QgRXZlbmluZywKCkEgZml4IGhhcyBiZWVuIHN1Ym1pdHRlZCBhbmQgYWNjZXB0ZWQsIGl0
IGlzIGN1cnJlbnRseSBzaXR0aW5nIGluIC1uZXh0OgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5leHQuZ2l0L3BhdGNoL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYz9pZD1mMzQwZWQ4NjY0YTU1YTQ2
Nzg1MGVjMTY4OTk5NmU2M2Q5ZWU5NzFhCgpWZXJ5IFJlc3BlY3RmdWxseSwKUGV0ZXIKCj4KPiA9
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQo+Cj4gQEBAQGAwYCBAYEBAIEBAQEBAQEBbICAgIDMuNTY2MzY1XSBVbmFi
bGUgdG8gaGFuZGxlIGtlcm5lbCBOVUxMIHBvaW50ZXIKPiBkZXJlZmVyZW5jZSBhdCB2aXJ0dWFs
IGFkZHJlc3MgMDAwMDAwMDAwMDAwMDAwMAo+IFsgICAgMy41NjcxODJdIE1lbSBhYm9ydCBpbmZv
Ogo+IFsgICAgMy41Njc0NDBdICAgRVNSID0gMHgwMDAwMDAwMDg2MDAwMDA2Cj4gWyAgICAzLjU2
Nzc4M10gICBFQyA9IDB4MjE6IElBQlQgKGN1cnJlbnQgRUwpLCBJTCA9IDMyIGJpdHMKPiBbICAg
IDMuNTY4MjY0XSAgIFNFVCA9IDAsIEZuViA9IDAKPiBbICAgIDMuNTY4NTQ0XSAgIEVBID0gMCwg
UzFQVFcgPSAwCj4gWyAgICAzLjU2ODgzM10gICBGU0MgPSAweDA2OiBsZXZlbCAyIHRyYW5zbGF0
aW9uIGZhdWx0Cj4gWyAgICAzLjU2OTI3NV0gdXNlciBwZ3RhYmxlOiA0ayBwYWdlcywgNDgtYml0
IFZBcywgcGdkcD0wMDAwMDAwMDAyNGJlMDAwCj4gWyAgICAzLjU2OTg1NF0gWzAwMDAwMDAwMDAw
MDAwMDBdIHBnZD0wODAwMDAwMDAxNzI1MDAzLAo+IHA0ZD0wODAwMDAwMDAxNzI1MDAzLCBwdWQ9
MDgwMDAwMDAwMGYxMTAwMywgcG1kPTAwMDAwMDAwMDAwMDAwMDAKPiBbICAgIDMuNTcwOTEyXSBJ
bnRlcm5hbCBlcnJvcjogT29wczogODYwMDAwMDYgWyMxXSBQUkVFTVBUIFNNUAo+IFsgICAgMy41
NzE0MjFdIE1vZHVsZXMgbGlua2VkIGluOgo+IFsgICAgMy41NzE3MTJdIENQVTogMyBQSUQ6IDAg
Q29tbTogc3dhcHBlci8zIE5vdCB0YWludGVkIDUuMTkuMC1yYzErICM3OTUKPiBbICAgIDMuNTcy
MzAzXSBIYXJkd2FyZSBuYW1lOiA5NmJvYXJkcyBSb2NrOTYwIChEVCkKPiBbICAgIDMuNTcyNzIy
XSBwc3RhdGU6IDIwMDAwMDA1IChuekN2IGRhaWYgLVBBTiAtVUFPIC1UQ08gLURJVCAtU1NCUwo+
IEJUWVBFPS0tKQo+IFsgICAgMy41NzMzNTRdIHBjIDogMHgwCj4gWyAgICAzLjU3MzU2N10gbHIg
OiBjYWxsX3RpbWVyX2ZuLmNvbnN0cHJvcC4wKzB4MjQvMHg4MAo+IFsgICAgMy41NzQwMzddIHNw
IDogZmZmZjgwMDAwYTcwM2E1MAo+IFsgICAgMy41NzQzMzldIHgyOTogZmZmZjgwMDAwYTcwM2E1
MCB4Mjg6IDAwMDAwMDAwMDAwMDAwMDUgeDI3Ogo+IDAwMDAwMDAwMDAwMDAwMDAKPiBbICAgIDMu
NTc1MDAyXSB4MjY6IGZmZmY4MDAwMGEzMzc5YzAgeDI1OiBmZmZmMDAwMGY3Nzk4ZGU4IHgyNDoK
PiBmZmZmODAwMDBhNzAzYWUwCj4gWyAgICAzLjU3NTY2NF0geDIzOiAwMDAwMDAwMDAwMDAwMDAw
IHgyMjogZGVhZDAwMDAwMDAwMDEyMiB4MjE6Cj4gMDAwMDAwMDAwMDAwMDEwMQo+IFsgICAgMy41
NzYzMjVdIHgyMDogZmZmZjAwMDAwMDZiNjIwMCB4MTk6IDAwMDAwMDAwMDAwMDAwMDAgeDE4Ogo+
IDAwMDAwMDAwMDAwMDAwMDAKPiBbICAgIDMuNTc2OTg2XSB4MTc6IGZmZmY4MDAwZWQ3NzMwMDAg
eDE2OiBmZmZmODAwMDA4MDFjMDAwIHgxNToKPiAwMDAwM2QwOTAwMDA3ZDAwCj4gWyAgICAzLjU3
NzY0OF0geDE0OiAwMDAwMDAwMDAwMDAwMDAwIHgxMzogMDAwMDAwMDAwMDAwMDAwMCB4MTI6Cj4g
MDAwMDAwMDAwMDAwMDAwMAo+IFsgICAgMy41NzgzMDhdIHgxMTogMDAwMDAwMDAwMDAwMDAwNCB4
MTA6IGZmZmY4MDAwZWQ3NzMwMDAgeDkgOgo+IGZmZmYwMDAwZjc3OThlMzAKPiBbICAgIDMuNTc4
OTcwXSB4OCA6IDAwMDAwMDAwMDAwMDAwMDEgeDcgOiBmZmZmZmZmZmZmZmZmZmZmIHg2IDoKPiAw
MDAwMDAwMDAwMDAwMDAwCj4gWyAgICAzLjU3OTYzMF0geDUgOiAwMDAwMDAwMDAwMDAwMDAwIHg0
IDogMDAwMDAwMDAwMDAwMDAwMCB4MyA6Cj4gMDAwMDAwMDAwMDAwMDIwMAo+IFsgICAgMy41ODAy
OTBdIHgyIDogMDAwMDAwMDAwMDAwMDIwMCB4MSA6IDAwMDAwMDAwMDAwMDAwMDAgeDAgOgo+IGZm
ZmYwMDAwMDEwMjUzMTAKPiBbICAgIDMuNTgwOTUxXSBDYWxsIHRyYWNlOgo+IFsgICAgMy41ODEx
NzhdICAweDAKPiBbICAgIDMuNTgxMzU5XSAgX19ydW5fdGltZXJzLnBhcnQuMCsweDFmMC8weDIz
NAo+IFsgICAgMy41ODE3NTldICBydW5fdGltZXJfc29mdGlycSsweDNjLzB4N2MKPiBbICAgIDMu
NTgyMTMwXSAgX3N0ZXh0KzB4MTI0LzB4MmEwCj4gWyAgICAzLjU4MjQzMF0gIF9faXJxX2V4aXRf
cmN1KzB4ZTQvMHgxMDAKPiBbICAgIDMuNTgyNzkwXSAgaXJxX2V4aXRfcmN1KzB4MTAvMHgxYwo+
IFsgICAgMy41ODMxMTddICBlbDFfaW50ZXJydXB0KzB4MzgvMHg3MAo+IFsgICAgMy41ODM0NTRd
ICBlbDFoXzY0X2lycV9oYW5kbGVyKzB4MTgvMHgyNAo+IFsgICAgMy41ODM4MzVdICBlbDFoXzY0
X2lycSsweDY0LzB4NjgKPiBbICAgIDMuNTg0MTU2XSAgY3B1aWRsZV9lbnRlcl9zdGF0ZSsweDEz
MC8weDJmMAo+IFsgICAgMy41ODQ1NjBdICBjcHVpZGxlX2VudGVyKzB4MzgvMHg1MAo+IFsgICAg
My41ODQ5MDFdICBkb19pZGxlKzB4MjE0LzB4MjljCj4gWyAgICAzLjU4NTIxMF0gIGNwdV9zdGFy
dHVwX2VudHJ5KzB4MjgvMHgzMAo+IFsgICAgMy41ODU1NzhdICBzZWNvbmRhcnlfc3RhcnRfa2Vy
bmVsKzB4MTNjLzB4MTUwCj4gWyAgICAzLjU4NjAwMl0gIF9fc2Vjb25kYXJ5X3N3aXRjaGVkKzB4
YTAvMHhhNAo+IFsgICAgMy41ODY0MDhdIENvZGU6IGJhZCBQQyB2YWx1ZQo+IFsgICAgMy41ODY2
OTldIC0tLVsgZW5kIHRyYWNlIDAwMDAwMDAwMDAwMDAwMDAgXS0tLQo+IFsgICAgMy41ODcxMTld
IEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBPb3BzOiBGYXRhbCBleGNlcHRpb24gaW4KPiBp
bnRlcnJ1cHQKPiBbICAgIDMuNTg3NzMyXSBTTVA6IHN0b3BwaW5nIHNlY29uZGFyeSBDUFVzCj4g
WyAgICAzLjU4ODIzMF0gS2VybmVsIE9mZnNldDogMHg4MDAwMCBmcm9tIDB4ZmZmZjgwMDAwODAw
MDAwMAo+IFsgICAgMy41ODg3MjVdIFBIWVNfT0ZGU0VUOiAweDAKPiBbICAgIDMuNTg4OTkxXSBD
UFUgZmVhdHVyZXM6IDB4ODAwLDAwMTI3ODExLDAwMDAxMDgyCj4gWyAgICAzLjU4OTQyMF0gTWVt
b3J5IExpbWl0OiBub25lCj4gWyAgICAzLjU4OTcyNF0gLS0tWyBlbmQgS2VybmVsIHBhbmljIC0g
bm90IHN5bmNpbmc6IE9vcHM6IEZhdGFsCj4gZXhjZXB0aW9uIGluIGludGVycnVwdCBdLS0tCj4K
Pgo+IC0tCj4gPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291
cmNlIHNvZnR3YXJlIGZvciBBUk0gU29Dcwo+Cj4gRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3
LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPiA8aHR0cDovL3R3aXR0ZXIu
Y29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8Cj4gPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5h
cm8tYmxvZy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
