Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 327A1C3DA78
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 14:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvS56swcoksJYdr825exoZ9RXQLsIzRv2q9t2l9f2b0=; b=0imDSU1jW+kGq+
	IPa3d+bgOlrs8VRIfYb8feioSvUhzbif2y4KRQ3n9zbW6cxpr5txeSrFmzYSgGJ/hxipcuCajGS7t
	KnbmDzxwdMc5ED0E808rtCwnNgOTHrh4ndOXFKMXvN7wqV6ZOpU50l1RygXTau2Riqzim/gz0imyM
	gy/LCZEKOJfAVCiN0ekNl/oekTHQRmpKunyO+mg+iLIjllc5roWsdR0x8Lpc4bntD6gK92ynPFZsR
	b5CC/jIulS0p/7fMm6KxLrzbEDmYiM7tAh03hjdElMpN8r9AVqRU36AHc5hJlON+9qoyffrHxFBJF
	tKagwarMHLSlfDEEOF0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHnCD-00EfDl-0a; Tue, 17 Jan 2023 14:44:17 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHnCA-00EfDM-NZ
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 14:44:16 +0000
Received: by mail-ed1-x52d.google.com with SMTP id w14so28046176edi.5
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 06:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L2GKUVGl3CWAvjouSZXXI9rq/95q9zdTjTDixRkOMiM=;
        b=i0LvW8HcNYFImqo8mjQKW9xLVZH+hkgwsQYbkS7IFa2gc1KlqqboCRG+d/r207qJLc
         JmH7XFEXPI4kHdTMBEZafdvTExinGScdhiaujovmYXX72LRLDf7Qgw5rvmkW8YfSmAmJ
         N8dYkMFJ/V1dXzimlbFMZPEIYR4uNuyNVk4Xsg3ek9XmTnViqlbLXiaDXWE728xt/k17
         CnruzUQ9YEzpJy5/1tOmkd38FPxSSdf5Yg/RHiSdRab6JvBeTMA+KSSWNEDD26uIhgKr
         /Hsh27gVkhXz6g2u0HZRJYANF50+7WhLOsTUrFZZH2WrgfUIsDq2oSwhTpD8UMQRCth+
         azFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L2GKUVGl3CWAvjouSZXXI9rq/95q9zdTjTDixRkOMiM=;
        b=tzVlYn9BCWoHaIAdZI0D/xf3uMQdtPNESK57nA3RHaORiVgwhw5DhrEk81WmvyIGug
         1gLHe9fE6sFHpuOfxGfCcxNhpLyTjcAhS60KDcJOhpqN5RZ8salMz9hFnEZoO0wkxebN
         AB+ptwwIgRpog7fXmmdqBhyUBV/qeOgpOlIC9fIUMqTu7J8sIYZ3Sl/pxozKRk5C4wMb
         wffDszzKCJL2ejPstUSGi1mjuzSIryc1uuQXEvUQV2PS8/mCa3Cya5QPEyYyWbKgw/Ii
         2rU72fiGXLJ7YGOAkRwed0wik8pRlG53Qbt+7zxziqaJwWArGXHLXq3UovAuYLJjLTNZ
         /kdA==
X-Gm-Message-State: AFqh2krPFdUZgwZN69AG8dCAb4s2xW4wpHi6b0dRnTz9T4EssTgKz6p5
	URh9a0JMoHdfpXq/Z8pRl/E=
X-Google-Smtp-Source: AMrXdXvdZbQUZh2gNZTerg0YvYIq5MkCJI8LDd2JVzonAWmKBh3GwR4pcdFngI3aTNqt7icI2JBQ4w==
X-Received: by 2002:a05:6402:e87:b0:491:6897:c5cb with SMTP id h7-20020a0564020e8700b004916897c5cbmr3134983eda.41.1673966649854;
        Tue, 17 Jan 2023 06:44:09 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id d20-20020a170906305400b007c0d64c1886sm13201684ejd.33.2023.01.17.06.44.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 06:44:09 -0800 (PST)
Message-ID: <a5943bfb-8d7b-6ed4-bbb4-0f018b921564@gmail.com>
Date: Tue, 17 Jan 2023 15:44:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1] arm: dts: rockchip: sync rk3066/rk3188 DT files from
 linux-next v6.2-rc4
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, u-boot@lists.denx.de,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>
References: <48680512-0312-6342-ba0a-f2411463099a@gmail.com>
 <31883268-dedf-6e3c-8647-0b7955c1ff16@theobroma-systems.com>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <31883268-dedf-6e3c-8647-0b7955c1ff16@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_064414_810742_2C89C5F1 
X-CRM114-Status: GOOD (  20.59  )
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

CgpPbiAxLzE3LzIzIDEwOjQ2LCBRdWVudGluIFNjaHVseiB3cm90ZToKPiBIaSBKb2hhbiwKPiAK
PiBPbiAxLzE2LzIzIDIwOjQ1LCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4+IFN5bmMgcmszMDY2L3Jr
MzE4OCBEVCBmaWxlcyBmcm9tIExpbnV4Lgo+PiBUaGlzIGlzIHRoZSBzdGF0ZSBhcyBvZiBsaW51
eC1uZXh0IHY2LjItcmM0Lgo+PiBOZXcgbmZjIG5vZGUgZm9yIE1LODA4IHJrMzA2NmEuCj4+IENS
VSBub2RlcyBub3cgaGF2ZSBhIGNsb2NrIHByb3BlcnR5Lgo+PiBUbyBwcmVmZW5kIGR0b2MgZXJy
b3JzIGEgZml4ZWQgY2xvY2sgbXVzdCBhbHNvIGJlCj4+IGluY2x1ZGVkIGZvciB0cGwvc3BsIGlu
IHRoZSByazN4eHgtdS1ib290LmR0c2kgZmlsZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSm9oYW4g
Sm9ua2VyIDxqYng2MjQ0QGdtYWlsLmNvbT4KPj4gLS0tCgpbLi5dCgo+PiBAQCAtMjIzLDcgKzIy
NCw3IEBACj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAjc2l6ZS1jZWxscyA9IDwxPjsKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIHJhbmdlczsKPj4KPj4gLcKgwqDCoMKgwqDCoMKgIGdwaW8wOiBncGlvMEAy
MDAwYTAwMCB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBncGlvMDogZ3Bpb0AyMDAwYTAwMCB7Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMTg4LWdw
aW8tYmFuazAiOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHgyMDAwYTAw
MCAweDEwMD47Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVycnVwdHMgPSA8R0lD
X1NQSSA1NCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gQEAgLTIzNiw3ICsyMzcsNyBAQAo+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjaW50ZXJydXB0LWNlbGxzID0gPDI+Owo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgfTsKPj4KPj4gLcKgwqDCoMKgwqDCoMKgIGdwaW8xOiBncGlvMUAyMDAz
YzAwMCB7Cgo+PiArwqDCoMKgwqDCoMKgwqAgZ3BpbzE6IGdwaW9AMjAwM2MwMDAgewoKSGksCgpM
T0w6IEkgbWFkZSB0aGF0IGJpbmRpbmcgY2hhbmdlIG9uIHJlcXVlc3QgZnJvbSBMaW51eCBEVCBt
YWludGFpbmVycy4KTm9kZSBuYW1lcyBzaG91bGQgZ2VuZXJpYy4KCj09PQoKTXkgZnVsbCB1LWJv
b3QgaXMgYWJsZSB0byBib290IGEgTGludXgga2VybmVsIGZvciByazMwNjZhLgpPbmx5IHdoZW4g
SSBnaXZlIHRoZSBjb21tYW5kIGJlbG93IGl0IGNyYXNoZXM6CgpncGlvIHN0YXR1cyAtYQoKQ291
bGQgeW91IGNvbmZpcm0gd2hhdCBvdGhlciBwYXJ0cyBhcmUgZWZmZWN0ZWQ/CgpJZiBpdCdzIGJv
b3RzIHRoZW4gaXQncyBnb29kIGVub3VnaCBmb3IgbWUgYW5kIG1vdmUgZm9yd2FyZCwgc28gcGxl
YXNlIG1lcmdlLihLZXZlcikKCkRyaXZlciBmaXhlcyBmb3IgdS1ib290IGRlcGVuZGluZyBvbiBM
aW51eCBEVCBjaGFuZ2VzIGlzIGFscmVhZHkgdmVyeSB0aW1lIGNvbnN1bWluZyBlbm91Z2ghCgo9
PT0KClVzaW5nIERUIHBhdGggb3Igbm9kZSBuYW1lIGlzIHdyb25nLgoKQ29tbWVudCBieSByb2Jo
K2R0Ogovc3lzL2J1cy9wbGF0Zm9ybS9kZXZpY2VzLyBwYXRocyBhcmUgbm90IGFuIEFCSS4gSSds
bCBjb25zaWRlcgpub2RlbmFtZXMgYW4gQUJJIGlmIGEgY2hhbmdlIGlzIG5vdGljZWQsIGJ1dCBu
b3QgZm9yIHN5c2ZzIHBhdGguCgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hp
cC9DQUxfSnNxSkd4X013WDl5bk1pQ1VtX3hQM3Q2eFdicnRpVWktRisyY2VYcVoyU3U1dEFAbWFp
bC5nbWFpbC5jb20vCgpNYWtlIHVzZSBvZiB0aGUgcHJvcGVydGllcyBhbmQgYSBjb21wYXRpYmxl
IGluIGEgbm9kZSBpbnN0ZWFkLgoKPT09CkEgbGl0dGxlIHRlc3QuCkZyb206IHJvY2tjaGlwX2dw
aW9fcHJvYmUoKToKCmludCBtYWluKCkgewoJLy9jaGFyIGRldl9uYW1lW10gPSAiZ3BpbzFAMjAw
M2MwMDAiOwoJY2hhciBkZXZfbmFtZVtdID0gImdwaW9AMjAwM2MwMDAiOwoJY2hhciBwcml2X25h
bWVbMl07CglpbnQgcHJpdl9iYW5rOwoJY2hhciAqZW5kOwoKCWVuZCA9IHN0cnJjaHIoZGV2X25h
bWUsICdAJyk7Cglwcml2X2JhbmsgPSB0cmFpbGluZ19zdHJ0b2xuKGRldl9uYW1lLCBlbmQpOwoK
CXByaXZfbmFtZVswXSA9ICdBJyArIHByaXZfYmFuazsKCXByaXZfbmFtZVsxXSA9IDA7CgoJcHJp
bnRmKCJwcml2X2Jhbms6ICVkXG4iLCBwcml2X2JhbmspOwoJcHJpbnRmKCJwcml2X25hbWU6ICVz
XG4iLCBwcml2X25hbWUpOwoJcmV0dXJuIDA7Cn0KCi8vIHByaXZfYmFuazogMQovLyBwcml2X25h
bWU6IEIKCkEgY2hhbmdlIG9mIG5vZGUgbmFtZSBnaXZlczoKCi8vIHByaXZfYmFuazogLTEKLy8g
cHJpdl9uYW1lOiBACgo9PT0KCkxpbnV4IGRyaXZlciBncGlvLXJvY2tjaGlwLmMgaGFzIGFuIGFs
aWFzIG9yIGVsc2UgYW4gaW5jcmVtZW50IGlkLgoKaWQgPSBvZl9hbGlhc19nZXRfaWQobnAsICJn
cGlvIik7CglpZiAoaWQgPCAwKQoJCWlkID0gZ3BpbysrOwoKUHJvYmxlbToKUHJvYmUgb3JkZXIg
aXMgbm90IGd1YXJhbnRpZWQuCkFsaWFzZXMgc2hvdWxkIGdvIHRvIGJvYXJkIGZpbGVzIGFuZCBu
b3QgaW4gZHRzaSBmaWxlcyBhbnltb3JlLiAKCj09PQoKVGhlIGN1cnJlbnQgY29tcGF0aWJsZSBz
dHJpbmcgaXMgZ2VuZXJpYywgYnV0IHRoZXNlIHN0cmluZ3Mgc2hvdWxkIG5vcm1hbGx5IGJlIFNv
QyBvcmllbnRhdGVkLgoKUHJvcG9zYWw6CgpyZXBsYWNlOgpjb21wYXRpYmxlID0gInJvY2tjaGlw
LGdwaW8tYmFuayI7CgpieToKY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMxODgtZ3Bpby1iYW5r
IjsKCldpdGggdGhhdCBrbm93biB3ZSBjYW4gbG9va3VwIHRoZSByZWcgYWRkcmVzcyBpbiBhIGxv
b2t1cCB0YWJsZSBhbmQgaXQncyBuYW1lIGZvciB1LWJvb3QuCgpzdHJ1Y3QgbG9va3VwX3RhYmxl
IHJrX2dwaW9fcmszMTg4X2RhdGFbXSA9IHsKCXsweDIwMDBhMDAwLCAiQSJ9LAoJezB4MjAwM2Mw
MDAsICJCIn0sCgl7MHgyMDAzZTAwMCwgIkMifSwKCXsweDIwMDgwMDAwLCAiRCJ9LAp9OwoKCgl7
IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzE4OC1ncGlvLWJhbmsiLCAuZGF0YSA9ICZya19n
cGlvX3JrMzE4OF9kYXRhIH0sCgo9PT0KCklmIG5lZWRlZCBJIGNhbiBoZWxwIHdpdGggY2hhbmdl
cyB0byByb2NrY2hpcCxncGlvLWJhbmsueWFtbAoKTGV0IG1lIGtub3cgaWYgaXQncyB1c2VmdWwg
b3IgdGhhdCB5b3UgaGF2ZSBhbiBvdGhlciBzb2x1dGlvbiBhcyBsb25nIGFzIHdlIGdldCBmb3J3
YXJkIGhlcmUuCgpKb2hhbgoKPiAKCj4gSSBiZWxpZXZlIHRoaXMgaXMgdGhlIHNhbWUgaXNzdWUg
YXMgb24gUkszMzk5IGFuZCBQWDMwOiB0aGlzIGJyZWFrcyBvdXIgR1BJTyBjb250cm9sbGVyIGRy
aXZlci4KCj4gCj4gYy5mLiBodHRwczovL2xvcmUua2VybmVsLm9yZy91LWJvb3QvMGFiOWE2MDAt
YjUxNy0wY2U1LWQxODktOTlmYzhlZGRmYTYwQHRoZW9icm9tYS1zeXN0ZW1zLmNvbS8gYW5kIGl0
cyBhbnN3ZXJzLgo+IAo+IENoZWVycywKPiBRdWVudGluCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
