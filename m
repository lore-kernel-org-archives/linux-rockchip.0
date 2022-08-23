Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 207B8C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 12:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aSi/a7Ovse6tn0vMDIhzVWz2iypswKboYgDuU38idVc=; b=YQjQ41u85Ob9Zm
	oyG/FnCo1LgU8/E6wwpqrc4Zg4cV7gCTjQxEm0KbOHjKrPPzCtVjNuqo8Hj0K0muYP5HtHuWbqGVW
	RXMEfC5h2veoM4ja0YMfXJidzjqreAS3skm9rE4O3Ats6Wx1Gbw+8Bt0Rowkw7k89XTvzbkB/Em5F
	LEoQlMqEoT0osmfD4LJ7/iDDQuB9jspGV27nF18x9RXzxWPauAdaZ+tzm/OHb1zO4hUK1yUxwHiiF
	rIZIpv0pqzC7cLK1RHnDFmXHjSq6la5PTkGjGGcYIjUY/ZZ82jLfnBZCNXFJ1SkPyCUwMrKFVUk2B
	M7JAauPw64q9TbYXYxcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQT2k-005sqA-Eo; Tue, 23 Aug 2022 12:30:06 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQT0s-005rh0-RY
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 12:28:12 +0000
Received: by mail-lf1-x12f.google.com with SMTP id z25so19471410lfr.2
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Aug 2022 05:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=7G9C+Co4+yWWKBexgp2TB7hElj+FoeQOLsH/nAPFK8E=;
        b=bE/a+j6rjSDnhBoAqIiRf+qTLj/0MgBuX9JZ7Lbs1UVsbTC5VnKo2IGUKFJDJ0UCG+
         jd5J9SVNPFUZ90SsIB9BzR7R25gkC68Gt67wU42UPETV+3eNfoK+GQdjdz0KbPiYElU0
         jyE7tnnLMb2Xh5XIfcc5tphiX7DmEY0TWLP2uusvqzfvcZXeta4CYraxcR5rxDeO3NRB
         pqwZKNJq4oUTtLvaE+EQjJKkdQIiraYvnO22krGcav7aZd5u4si13vlbSELLliSTM4DS
         5ZeMlcdKBREItoqi/en2wU/r0MNOL8J0XsBUqurznGLcqvzoazzgWn+8Z/lP/kRaZ2Ft
         CD/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=7G9C+Co4+yWWKBexgp2TB7hElj+FoeQOLsH/nAPFK8E=;
        b=oUevXv57+5a4hOFrmkNY09vbOTfmU3haNP5S4uhBBdtD2b07a3d74s2B0+MxLcoUb4
         4689LZdbIN9DD6qpSzPtMk2FsG1cU9BtX/DUs4u6QQvoZeg212V7QQeN02yr8XegLqkF
         /lEHcRkyZmprglLpGWkIQy1kKpYDuBmfjo05uR5l9zignzfPSfg51aMZbvyiM7ySnxhV
         ygHD/o+LM2Jx6ZlwEFHtxaNqkoU3+Gr4HD6DhDZ9C3S03ZdujnlldD11TMwwG+LuBhpe
         2Exca80HBxh7qYanSWFFRn+nW+OrH0l23wuTugq6gqR74ndN08XgdC8LURbZJ8aVexqU
         f+vQ==
X-Gm-Message-State: ACgBeo28BilRMz0vJn0uXUcnh/P5SAeev3Rk3XMeGHkfmGBesglW2eIl
	nuCO8ClNgQHkEMSo5XYBXZg1sw==
X-Google-Smtp-Source: AA6agR6mzHIbf0VJjFNdGRAF4LvDP681wp00MElTPS2vKdJVMsq93L0UrD3svamyI4FNxclZ3Fq4bw==
X-Received: by 2002:a05:6512:1082:b0:48a:f9b5:a563 with SMTP id j2-20020a056512108200b0048af9b5a563mr9327597lfg.471.1661257685398;
        Tue, 23 Aug 2022 05:28:05 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id a23-20020a056512201700b00492e16b7ab3sm1220108lfb.94.2022.08.23.05.28.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 05:28:04 -0700 (PDT)
Message-ID: <da8df5f3-a69f-6807-3104-37e6c92e5788@linaro.org>
Date: Tue, 23 Aug 2022 15:28:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and
 RG503
Content-Language: en-US
To: Maya Matuszczyk <maccraft123mc@gmail.com>,
 Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree <devicetree@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Chris Healy <cphealy@gmail.com>, Chris Morgan <macromorgan@hotmail.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
 <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_052810_957564_2E29D18D 
X-CRM114-Status: GOOD (  22.70  )
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

T24gMjAvMDgvMjAyMiAxMTo0MCwgTWF5YSBNYXR1c3pjenlrIHdyb3RlOgo+IEhlbGxvLAo+IAo+
IHNvYi4sIDIwIHNpZSAyMDIyIG8gMDA6MjYgQ2hyaXMgTW9yZ2FuIDxtYWNyb2FscGhhODJAZ21h
aWwuY29tPiBuYXBpc2HFgihhKToKPj4KPj4gRnJvbTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdh
bkBob3RtYWlsLmNvbT4KPj4KPj4gQW5iZXJuaWMgUkczNTNQIGFuZCBSRzUwMyBhcmUgYm90aCBS
SzM1NjYgYmFzZWQgaGFuZGhlbGQgZ2FtaW5nIGRldmljZXMKPj4gZnJvbSBBbmJlcm5pYy4KPj4K
Pj4gQm90aCBkZXZpY2VzIGhhdmU6Cj4+ICAtIDIgU0RNTUMgc2xvdHMuCj4+ICAtIEEgUmVhbHRl
ayBydGw4ODIxY3MgV2lGaS9CbHVldG9vdGggYWRhcHRlci4KPj4gIC0gQSBtaW5pIEhETUkgcG9y
dC4KPj4gIC0gQSBVU0IgQyBob3N0IHBvcnQgYW5kIGEgVVNCIEMgb3RnIHBvcnQgKGN1cnJlbnRs
eSBvbmx5IHdvcmtpbmcgYXMKPj4gICAgZGV2aWNlKS4KPj4gIC0gTXVsdGlwbGUgR1BJTyBidXR0
b25zIGFuZCBhIHNpbmdsZSBBREMgYnV0dG9uLgo+PiAgLSBEdWFsIGFuYWxvZyBqb3lzdGlja3Mg
Y29udHJvbGxlZCB2aWEgYSBHUElPIG11eC4KPj4gIC0gQSBoZWFkcGhvbmUgamFjayB3aXRoIGFt
cGxpZmllZCBzdGVyZW8gc3BlYWtlcnMgdmlhIGEgU0dNNDg2NSBhbXAuCj4+ICAtIEEgUFdNIGJh
c2VkIHZpYnJhdG9yIGZvciBmb3JjZSBmZWVkYmFjay4KPj4KPj4gVGhlIFJHMzUzUCBoYXM6Cj4+
ICAtIDJHQiBMUEREUjQgUkFNLgo+PiAgLSBBIDMyR0IgZU1NQy4KPj4gIC0gQSAzLjUgaW5jaCA2
NDB4NDgwIDQtbGFuZSBEU0kgcGFuZWwgb2YgdW5rbm93biBvcmlnaW4gd2l0aCBhbiBpMmMKPj4g
ICAgY29udHJvbGxlZCB0b3VjaHNjcmVlbiAodG91Y2hzY3JlZW4gaXMgYSBIeW5pdHJvbiBDU1Qz
NDApLgo+Pgo+PiBUaGUgUkc1MDMgaGFzOgo+PiAgLSAxR0IgTFBERFI0IFJBTS4KPj4gIC0gQSA1
IGluY2ggOTYweDU0NCBBTU9MRUQgMi1sYW5lIERTSS9EQkkgcGFuZWwgbWFudWZhY3R1cmVkIGJ5
IFNhbXN1bmcKPj4gICAgd2l0aCBwYXJ0IG51bWJlciBhbXM0OTVxYTA0LiBEYXRhIGZvciB0aGlz
IHBhbmVsIGlzIHByb3ZpZGVkIHZpYSB0aGUKPj4gICAgRFNJIGludGVyZmFjZSwgaG93ZXZlciBj
b21tYW5kcyBhcmUgc2VudCB2aWEgYSA5LWJpdCAzLXdpcmUgU1BJCj4+ICAgIGludGVyZmFjZS4g
VGhlIE1JU08gcGluIG9mIFNQSTMgb2YgdGhlIFNPQyBpcyB3aXJlZCB0byB0aGUgaW5wdXQgb2YK
Pj4gICAgdGhlIHBhbmVsLCBzbyBpdCBtdXN0IGJlIGJpdGJhbmdlZC4KPj4KPj4gVGhpcyBkZXZp
Y2V0cmVlIGVuYWJsZXMgdGhlIGZvbGxvd2luZyBoYXJkd2FyZToKPj4gIC0gSERNSSAocGx1cyBh
dWRpbykuCj4+ICAtIEFuYWxvZyBhdWRpbywgaW5jbHVkaW5nIHNwZWFrZXJzLgo+PiAgLSBBbGwg
YnV0dG9ucy4KPj4gIC0gQWxsIFNETU1DL2VNTUMvU0RJTyBjb250cm9sbGVycy4KPj4gIC0gVGhl
IEFEQyBqb3lzdGlja3MgKG5vdGUgYSBwZW5kaW5nIHBhdGNoIGlzIHJlcXVpcmVkIHRvIHVzZSB0
aGVtKS4KPj4gIC0gV2lGaS9CbHVldG9vdGggKG5vdGUgb3V0IG9mIHRyZWUgZHJpdmVycyBhcmUg
cmVxdWlyZWQpLgo+PiAgLSBUaGUgUFdNIGJhc2VkIHZpYnJhdG9yIG1vdG9yLgo+Pgo+PiBUaGUg
Zm9sbG93aW5nIGhhcmR3YXJlIGlzIG5vdCBlbmFibGVkOgo+PiAgLSBUaGUgZGlzcGxheSBwYW5l
bHMgKGRyaXZlcnMgYXJlIGJlaW5nIHdyaXR0ZW4gYW5kIHRoZXJlIGFyZSBpc3N1ZXMKPj4gICAg
d2l0aCB0aGUgdXBzdHJlYW0gRFNJIGFuZCBWT1AyIHN1YnN5c3RlbXMpLgo+PiAgLSBCYXR0ZXJ5
IChkcml2ZXIgcGVuZGluZykuCj4+ICAtIFRvdWNoc2NyZWVuIG9uIHRoZSBSRzM1M1AgKG5vdGUg
dGhlIGkyYzIgYnVzIGlzIGVuYWJsZWQgZm9yIGl0KS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPj4gLS0tCj4+ICBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgIDIgKwo+PiAgLi4uL2R0cy9y
b2NrY2hpcC9yazM1NjYtYW5iZXJuaWMtcmczNTNwLmR0cyAgIHwgMTAzICsrKwo+PiAgLi4uL2R0
cy9yb2NrY2hpcC9yazM1NjYtYW5iZXJuaWMtcmc1MDMuZHRzICAgIHwgIDkzICsrCj4+ICAuLi4v
ZHRzL3JvY2tjaGlwL3JrMzU2Ni1hbmJlcm5pYy1yZ3h4My5kdHNpICAgfCA4MjEgKysrKysrKysr
KysrKysrKysrCj4+ICA0IGZpbGVzIGNoYW5nZWQsIDEwMTkgaW5zZXJ0aW9ucygrKQo+PiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LWFuYmVy
bmljLXJnMzUzcC5kdHMKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2Ni1hbmJlcm5pYy1yZzUwMy5kdHMKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1hbmJlcm5pYy1yZ3h4My5kdHNp
Cj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxl
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+PiBpbmRleCBlZjc5YTY3
MjgwNGEuLjE0MDIyNzRhNzhhMCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9NYWtlZmlsZQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01h
a2VmaWxlCj4+IEBAIC01Nyw2ICs1Nyw4IEBAIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSAr
PSByazMzOTktcm9ja3BybzY0LmR0Ygo+PiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9
IHJrMzM5OS1zYXBwaGlyZS5kdGIKPj4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSBy
azMzOTktc2FwcGhpcmUtZXhjYXZhdG9yLmR0Ygo+PiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NI
SVApICs9IHJrMzM5OXByby1yb2NrLXBpLW4xMC5kdGIKPj4gK2R0Yi0kKENPTkZJR19BUkNIX1JP
Q0tDSElQKSArPSByazM1NjYtYW5iZXJuaWMtcmczNTNwLmR0Ygo+PiArZHRiLSQoQ09ORklHX0FS
Q0hfUk9DS0NISVApICs9IHJrMzU2Ni1hbmJlcm5pYy1yZzUwMy5kdGIKPj4gIGR0Yi0kKENPTkZJ
R19BUkNIX1JPQ0tDSElQKSArPSByazM1NjYtcGluZW5vdGUtdjEuMS5kdGIKPj4gIGR0Yi0kKENP
TkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1NjYtcGluZW5vdGUtdjEuMi5kdGIKPj4gIGR0Yi0k
KENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1NjYtcXVhcnR6NjQtYS5kdGIKPj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LWFuYmVybmljLXJnMzUz
cC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1hbmJlcm5pYy1yZzM1
M3AuZHRzCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uZjkz
MzNlZDFlY2M3Cj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjYtYW5iZXJuaWMtcmczNTNwLmR0cwo+PiBAQCAtMCwwICsxLDEwMyBAQAo+
PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4+ICsKPj4g
Ky9kdHMtdjEvOwo+PiArCj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+Cj4+
ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW5wdXQvbGludXgtZXZlbnQtY29kZXMuaD4KPj4gKyNp
bmNsdWRlIDxkdC1iaW5kaW5ncy9waW5jdHJsL3JvY2tjaGlwLmg+Cj4+ICsjaW5jbHVkZSAicmsz
NTY2LWFuYmVybmljLXJneHgzLmR0c2kiCj4+ICsKPj4gKy8gewo+PiArICAgICAgIG1vZGVsID0g
IlJHMzUzUCI7Cj4+ICsgICAgICAgY29tcGF0aWJsZSA9ICJhbmJlcm5pYyxyZzM1M3AiLCAicm9j
a2NoaXAscmszNTY2IjsKPj4gKwo+PiArICAgICAgIGFsaWFzZXMgewo+PiArICAgICAgICAgICAg
ICAgbW1jMCA9ICZzZGhjaTsKPj4gKyAgICAgICAgICAgICAgIG1tYzEgPSAmc2RtbWMwOwo+PiAr
ICAgICAgICAgICAgICAgbW1jMiA9ICZzZG1tYzE7Cj4+ICsgICAgICAgICAgICAgICBtbWMzID0g
JnNkbW1jMjsKPj4gKyAgICAgICB9Owo+PiArCj4+ICsgICAgICAgYmFja2xpZ2h0OiBiYWNrbGln
aHQgewo+PiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJwd20tYmFja2xpZ2h0IjsKPj4g
KyAgICAgICAgICAgICAgIHBvd2VyLXN1cHBseSA9IDwmdmNjX3N5cz47Cj4+ICsgICAgICAgICAg
ICAgICBwd21zID0gPCZwd200IDAgMjUwMDAgMD47Cj4+ICsgICAgICAgfTsKPj4gK307Cj4+ICsK
Pj4gKyZncGlvX2tleXNfY29udHJvbCB7Cj4+ICsgICAgICAgYnV0dG9uLTUgewo+PiArICAgICAg
ICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8zIFJLX1BBNSBHUElPX0FDVElWRV9MT1c+Owo+PiArICAg
ICAgICAgICAgICAgbGFiZWwgPSAiRFBBRC1MRUZUIjsKPj4gKyAgICAgICAgICAgICAgIGxpbnV4
LGNvZGUgPSA8QlROX0RQQURfUklHSFQ+Owo+PiArICAgICAgIH07Cj4+ICsKPj4gKyAgICAgICBi
dXR0b24tNiB7Cj4+ICsgICAgICAgICAgICAgICBncGlvcyA9IDwmZ3BpbzMgUktfUEE2IEdQSU9f
QUNUSVZFX0xPVz47Cj4+ICsgICAgICAgICAgICAgICBsYWJlbCA9ICJEUEFELVJJR0hUIjsKPj4g
KyAgICAgICAgICAgICAgIGxpbnV4LGNvZGUgPSA8QlROX0RQQURfTEVGVD47Cj4+ICsgICAgICAg
fTsKPj4gKwo+PiArICAgICAgIGJ1dHRvbi05IHsKPj4gKyAgICAgICAgICAgICAgIGdwaW9zID0g
PCZncGlvMyBSS19QQjMgR1BJT19BQ1RJVkVfTE9XPjsKPj4gKyAgICAgICAgICAgICAgIGxhYmVs
ID0gIlRSIjsKPj4gKyAgICAgICAgICAgICAgIGxpbnV4LGNvZGUgPSA8QlROX1RSMj47Cj4+ICsg
ICAgICAgfTsKPj4gKwo+PiArICAgICAgIGJ1dHRvbi0xMCB7Cj4+ICsgICAgICAgICAgICAgICBn
cGlvcyA9IDwmZ3BpbzMgUktfUEI0IEdQSU9fQUNUSVZFX0xPVz47Cj4+ICsgICAgICAgICAgICAg
ICBsYWJlbCA9ICJUUjIiOwo+PiArICAgICAgICAgICAgICAgbGludXgsY29kZSA9IDxCVE5fVFI+
Owo+PiArICAgICAgIH07Cj4+ICsKPj4gKyAgICAgICBidXR0b24tMTQgewo+PiArICAgICAgICAg
ICAgICAgZ3Bpb3MgPSA8JmdwaW8zIFJLX1BDMSBHUElPX0FDVElWRV9MT1c+Owo+PiArICAgICAg
ICAgICAgICAgbGFiZWwgPSAiV0VTVCI7Cj4+ICsgICAgICAgICAgICAgICBsaW51eCxjb2RlID0g
PEJUTl9XRVNUPjsKPj4gKyAgICAgICB9Owo+PiArCj4+ICsgICAgICAgYnV0dG9uLTE1IHsKPiBJ
IGRvbid0IHRoaW5rIGp1c3QgaGF2aW5nIHRoZSBidXR0b25zIG51bWJlcmVkIHNlcXVlbnRpYWxs
eQo+IGlzIHRoZSBiZXN0IGNvdXJzZSBvZiBhY3Rpb24sIGJ1dCB0aGlzIHByZXNlcnZlcyB0aGUg
R1BJTwo+IG9yZGVyaW5nIHdoaWxlIG90aGVyIG9wdGlvbnMgZG9uJ3QuLi4KPiBJJ20gdGhpbmtp
bmcgYWJvdXQgZWl0aGVyIGhhdmluZyB0aGVtIG5hbWVkIGFmdGVyCj4gdGhlaXIgZnVuY3Rpb24s
IG9yIG5hbWVkIGFmdGVyIHdoYXQgdGhleSdyZSBsYWJlbGVkCj4gb24gdGhlIFBDQiBvZiB0aGUg
ZGV2aWNlLgo+IENhbiBhbnkgb2YgRFQgbWFpbnRhaW5lcnMgZ2l2ZSB0aGVpciBpbnB1dCBvbiB0
aGlzPwoKTmFtZXMgc2hvdWxkIGJlIGdlbmVyaWMgYW5kIGJ1dHRvbi0xIGlzIGEgbmljZSBnZW5l
cmljIG5hbWUuIEFkZGluZwpzcGVjaWZpYyBwcmVmaXgvc3VmZml4IG1ha2VzIHNvbWV0aGluZyBs
ZXNzIGdlbmVyaWMsIG1vcmUgc3BlY2lmaWMsIHRodXMKSSBwcmVmZXIgd2l0aG91dCBwcmVmaXhl
cy9zdWZmaXhlcy4gSSBkb24ndCBtaW5kIHRoZW0sIHRob3VnaCBmb3IgdGhlCmNhc2VzIGl0IGJy
aW5ncyB2YWx1ZS4gSGVyZSB0aGUgcm9sZSBpcyBjbGVhcmx5IGRlc2NyaWJlZCBieSBsYWJlbCwg
c28Kd2h5IGFkZGluZyBzdWZmaXg/CgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
