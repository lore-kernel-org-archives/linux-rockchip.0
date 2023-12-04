Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45567C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 19:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=biezSm+E3kb/EOupaH0+LmT0voPgJx4WGsYzQb3CmIg=; b=e5FNxwz1EWpxLf
	DkVWp+XIl87RQ/1kEBRz0CXw8nstxNwnfCvIrDFPNYRNFJpoIcmMSB2VN0HcqlqoB4LOd+/urxQ8A
	I2LGAynEpXYwh2/sl65sWbI/E2sz6oLUaL4SOdySVVyIkiBp4UUrGNKrsRgosUai98I6+5YOtQfxk
	NouSpA6QjW1ktM75Kuhv6jdU/NFcJeE9Xrp0rd5BywW7yngF9oowB7urrKIary2XNz3nUd/d9PACF
	hrvjPbnNCgUf/SvKCjexA0xdeG9/IN+g/UZZGxb4+Q2AijrTXsHP6TrjMR7fbVa7NFuDyMkcsrNyB
	VMIfNiibpr2GNUyRdghg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAExv-005UMJ-0d;
	Mon, 04 Dec 2023 19:50:51 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAExr-005ULj-2B;
	Mon, 04 Dec 2023 19:50:49 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-54c77e0835bso3146414a12.2;
        Mon, 04 Dec 2023 11:50:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701719445; x=1702324245; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+qdbcC7yRoXStA6//Sf0ppzUiv9xW5yZR+OVcJWO5pA=;
        b=HbnLxmskCz1ZFI4pi6aL1vGivfvHR3xkxJgyG5fThWUpk14RbAjFLvreAgvPelXKwS
         kBNF6gK/xAxBaIpxkirhv9l4BoR+eYXks4wIU31L1s9i+6BXCGG+jQw0rggGQQf33v3Y
         O+s2F13jxotZoQdDQKhXx362NeGv68DcLHfwoC7j5EfU9hdUu9wzLmnSJcIM8A17POcQ
         cNEG52SK7P9m+Xf4SJVc2bjz93R6SbqZzJj32GJIIGGnhFK2kekYvKXz9OEPPNN5ETNl
         j5+fMFGcSm4KZ+RCc5l/o0TxTwTimXEwFCaMbWabV12MvZOAx0qhbeUmyQnpiLIgC69h
         2RpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701719445; x=1702324245;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+qdbcC7yRoXStA6//Sf0ppzUiv9xW5yZR+OVcJWO5pA=;
        b=e8W3KnJRgqhDvWDR8+xSVmeiHAqTGs3Gblfeipx9kwP1FEsMJADVqmfNf4mY10Xgdf
         aH2qLnasoWcZGNLypMg42nnhSIA3JVjW5WCGArUKDepkxbuCZhm/v0nwytNmzPRFxuN+
         1nkVT1gPsg+gQiTcH9Bz+xjVBbn5L4Gynbs/OEkaRBIMqcpVhoceerQ2q7vp6bxKkImU
         h0btIWs/9MlrPF6MCa7Rul/ueGiJbiIhEbE0fCT6Da49Rp9bp7S2RYoQDpWlB00NKOK2
         4Bm7jDE4qExwQgd1ni3NhAUSsw61o2ELCl45jIo23XtzptH0QtaI05QQbt2AWSV4dhld
         deqA==
X-Gm-Message-State: AOJu0YzfL7FLkaOVDhuiyf87KIO8Gug++ZY/yk75D2aKh5OsX53+e8eH
	kwsId1yyT+2THFtq6gA/RF4=
X-Google-Smtp-Source: AGHT+IFd3H78EZLb2ntO++WfIolEE0unvWxnYVDbs3/x9OA5b4eIfwNO07EUvodwpvsxw1kYt9ELqQ==
X-Received: by 2002:a17:906:7159:b0:a19:a19b:78a1 with SMTP id z25-20020a170906715900b00a19a19b78a1mr3701905ejj.100.1701719445371;
        Mon, 04 Dec 2023 11:50:45 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id lj16-20020a170906f9d000b00a0c9024828asm5605562ejb.68.2023.12.04.11.50.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 11:50:45 -0800 (PST)
Message-ID: <3b436dfe-832a-3c63-cf03-2ddc7aa969c3@gmail.com>
Date: Mon, 4 Dec 2023 20:50:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 1/2] ARM: dts: rockchip: add gpio alias for gpio dt
 nodes
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, jay.xu@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
 <62868103.matp6XCIr4@diego>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <62868103.matp6XCIr4@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_115047_739009_D19B4038 
X-CRM114-Status: GOOD (  20.93  )
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

CgpPbiAxMi80LzIzIDIwOjM1LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSBKb2hhbiwKPiAK
PiBBbSBTYW1zdGFnLCAyLiBEZXplbWJlciAyMDIzLCAxOToyMjowMSBDRVQgc2NocmllYiBKb2hh
biBKb25rZXI6Cj4+IFJvY2tjaGlwIFNvQyBUUk0sIFNvQyBkYXRhc2hlZXQgYW5kIGJvYXJkIHNj
aGVtYXRpY3MgYWx3YXlzIHJlZmVyIHRvCj4+IHRoZSBzYW1lIGdwaW8gbnVtYmVycyAtIGV2ZW4g
aWYgbm90IGFsbCBhcmUgdXNlZCBmb3IgYSBzcGVjaWZpYyBib2FyZC4KPj4gSW4gb3JkZXIgdG8g
bm90IGhhdmUgdG8gcmUtZGVmaW5lIHRoZW0gZm9yIGV2ZXJ5IGJvYXJkIGFkZCB0aGUKPj4gYWxp
YXNlcyB0byBTb0MgZHRzaSBmaWxlcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSmlhbnF1biBYdSA8
amF5Lnh1QHJvY2stY2hpcHMuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBKb2hhbiBKb25rZXIgPGpi
eDYyNDRAZ21haWwuY29tPgo+IAoKPiBwYXRjaCBpdHNlbGYgbG9va3MgZ29vZCwgYnV0IEkgZG9u
J3QgdW5kZXJzdGFuZCB0aGUgYXV0aG9yc2hpcCBzaXR1YXRpb24uCj4gQXMgdGhlc2UgdHdvIHNp
Z25lZC1vZmYtYnlzIGFyZSBub3cgaXQgd291bGQgc3VnZ2VzdCB0aGF0IHlvdSBwaWNrZWQgdXAK
PiBKaWFucXVuIFh1J3MgcGF0Y2gsIGJ1dCB0aGVuIHRoZSBhdXRob3Igd291bGQgbmVlZCB0byBi
ZSBkaWZmZXJlbnQuCj4gCj4gT3IgZG8geW91IHdhbnQgdG8gZGVjbGFyZSB0aGlzIHZpYSBhCj4g
Q28tRGV2ZWxvcGVkLWJ5OiBKaWFucXVuIFh1IDxqYXkueHVAcm9jay1jaGlwcy5jb20+CgpUaGUg
bmV3ZXIgdGFnIHVzZSBvZiBDby1EZXZlbG9wZWQtYnkgaXMgbW9yZSBjb25mdXNpbmcgY29tcGFy
ZWQgdG8gaW4gdGhlIG9sZCBkYXlzLi4uCgpQYXRjaCBkZXJpdmVkIGZyb206Cmh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjIwOTA5MDkwNTU4LjM2MDkxOTAtMi1qYXku
eHVAcm9jay1jaGlwcy5jb20vCgpDb3VsZCB5b3UgYWRkL2ZpeCB3aGF0IGlzIG5lZWRlZCB3aXRo
b3V0IHJlc3VibWl0dGluZy4KCkpvaGFuCgo+IAo+IAo+IFRoYW5rcwo+IEhlaWtvCj4gCj4+IC0t
LQo+Pgo+PiBDaGFuZ2VkIFYxOgo+PiAgIHJlYmFzZQo+PiAgIHJlbW92ZSByazMwNjYgZ3BpbzUg
YWxpYXMKPj4gLS0tCj4+ICBhcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMwMzYuZHRzaSAg
fCAzICsrKwo+PiAgYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMDY2YS5kdHNpIHwgNSAr
KysrKwo+PiAgYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMjJ4LmR0c2kgIHwgNCArKysr
Cj4+ICBhcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMyODguZHRzaSAgfCA5ICsrKysrKysr
Kwo+PiAgYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszeHh4LmR0c2kgIHwgNCArKysrCj4+
ICA1IGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzAzNi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMv
cm9ja2NoaXAvcmszMDM2LmR0c2kKPj4gaW5kZXggNzg2ODZmYzcyY2U2Li44YWEyZTA4NjRmZWQg
MTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzAzNi5kdHNpCj4+
ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzAzNi5kdHNpCj4+IEBAIC0xNyw2
ICsxNyw5IEBAIC8gewo+PiAgCWludGVycnVwdC1wYXJlbnQgPSA8JmdpYz47Cj4+Cj4+ICAJYWxp
YXNlcyB7Cj4+ICsJCWdwaW8wID0gJmdwaW8wOwo+PiArCQlncGlvMSA9ICZncGlvMTsKPj4gKwkJ
Z3BpbzIgPSAmZ3BpbzI7Cj4+ICAJCWkyYzAgPSAmaTJjMDsKPj4gIAkJaTJjMSA9ICZpMmMxOwo+
PiAgCQlpMmMyID0gJmkyYzI7Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yb2Nr
Y2hpcC9yazMwNjZhLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMwNjZhLmR0
c2kKPj4gaW5kZXggZGU5OTE1ZDk0NmY3Li4zMDEzOWYyMWRlNjQgMTAwNjQ0Cj4+IC0tLSBhL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzA2NmEuZHRzaQo+PiArKysgYi9hcmNoL2FybS9i
b290L2R0cy9yb2NrY2hpcC9yazMwNjZhLmR0c2kKPj4gQEAgLTEzLDYgKzEzLDExIEBACj4+ICAv
IHsKPj4gIAljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzA2NmEiOwo+Pgo+PiArCWFsaWFzZXMg
ewo+PiArCQlncGlvNCA9ICZncGlvNDsKPj4gKwkJZ3BpbzYgPSAmZ3BpbzY7Cj4+ICsJfTsKPj4g
Kwo+PiAgCWNwdXMgewo+PiAgCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4gIAkJI3NpemUtY2Vs
bHMgPSA8MD47Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMy
MnguZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzIyeC5kdHNpCj4+IGluZGV4
IGE3MjE3NDRjYmZkMS4uODMxNTYxZmMxODE0IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9ib290
L2R0cy9yb2NrY2hpcC9yazMyMnguZHRzaQo+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9yb2Nr
Y2hpcC9yazMyMnguZHRzaQo+PiBAQCAtMTUsNiArMTUsMTAgQEAgLyB7Cj4+ICAJaW50ZXJydXB0
LXBhcmVudCA9IDwmZ2ljPjsKPj4KPj4gIAlhbGlhc2VzIHsKPj4gKwkJZ3BpbzAgPSAmZ3BpbzA7
Cj4+ICsJCWdwaW8xID0gJmdwaW8xOwo+PiArCQlncGlvMiA9ICZncGlvMjsKPj4gKwkJZ3BpbzMg
PSAmZ3BpbzM7Cj4+ICAJCXNlcmlhbDAgPSAmdWFydDA7Cj4+ICAJCXNlcmlhbDEgPSAmdWFydDE7
Cj4+ICAJCXNlcmlhbDIgPSAmdWFydDI7Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0
cy9yb2NrY2hpcC9yazMyODguZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzI4
OC5kdHNpCj4+IGluZGV4IGNiOWNkYWRkZmZkNC4uZWFkMzQzZGMzZGYxIDEwMDY0NAo+PiAtLS0g
YS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMyODguZHRzaQo+PiArKysgYi9hcmNoL2Fy
bS9ib290L2R0cy9yb2NrY2hpcC9yazMyODguZHRzaQo+PiBAQCAtMTksNiArMTksMTUgQEAgLyB7
Cj4+Cj4+ICAJYWxpYXNlcyB7Cj4+ICAJCWV0aGVybmV0MCA9ICZnbWFjOwo+PiArCQlncGlvMCA9
ICZncGlvMDsKPj4gKwkJZ3BpbzEgPSAmZ3BpbzE7Cj4+ICsJCWdwaW8yID0gJmdwaW8yOwo+PiAr
CQlncGlvMyA9ICZncGlvMzsKPj4gKwkJZ3BpbzQgPSAmZ3BpbzQ7Cj4+ICsJCWdwaW81ID0gJmdw
aW81Owo+PiArCQlncGlvNiA9ICZncGlvNjsKPj4gKwkJZ3BpbzcgPSAmZ3Bpbzc7Cj4+ICsJCWdw
aW84ID0gJmdwaW84Owo+PiAgCQlpMmMwID0gJmkyYzA7Cj4+ICAJCWkyYzEgPSAmaTJjMTsKPj4g
IAkJaTJjMiA9ICZpMmMyOwo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2No
aXAvcmszeHh4LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazN4eHguZHRzaQo+
PiBpbmRleCBjYjRlNDJlZGU1NmEuLmYzNzEzN2YyOThkNSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9h
cm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszeHh4LmR0c2kKPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9k
dHMvcm9ja2NoaXAvcmszeHh4LmR0c2kKPj4gQEAgLTE2LDYgKzE2LDEwIEBAIC8gewo+Pgo+PiAg
CWFsaWFzZXMgewo+PiAgCQlldGhlcm5ldDAgPSAmZW1hYzsKPj4gKwkJZ3BpbzAgPSAmZ3BpbzA7
Cj4+ICsJCWdwaW8xID0gJmdwaW8xOwo+PiArCQlncGlvMiA9ICZncGlvMjsKPj4gKwkJZ3BpbzMg
PSAmZ3BpbzM7Cj4+ICAJCWkyYzAgPSAmaTJjMDsKPj4gIAkJaTJjMSA9ICZpMmMxOwo+PiAgCQlp
MmMyID0gJmkyYzI7Cj4+IC0tCj4+IDIuMzkuMgo+Pgo+Pgo+IAo+IAo+IAo+IAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
