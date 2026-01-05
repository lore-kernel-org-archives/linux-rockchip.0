Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FBB1C79FA7
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jan 2026 17:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bDjTJoK58uZKgMGelmaK4KlFQcj/hPnxtyY7bdDIbfE=; b=3VWWXhJVQs29iD
	0yfQCgIvZJS00+TAnAYFLGuxmy+sAv9LHdaHTAOMRsU/3moeIarCVxCtjrNchEQbE8KGmyGfkO+yv
	FOfQ0ENkDZhICWXxbN/P2Y154sS27VFzpXhcdW8F+t0MHEUAmDYxS7CVJtof/PCZO9qogSaZoQW4j
	w+ddmMHQ+tr4EkS9zwL+l6onZEQS4HjXpb7SIaeyod2pXCHFliHU79aAjvSR059oTIjGZoBzivXSl
	tXenaN4sKwUomMesxnjMURIbMA7KsZiTGVdqHqHCCeebOF2ui9Becjm8SDW3V5J5iuayt06lZpV5n
	5vPe+YfTJYmc0VH4QN/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcoES-0000000Bo8z-0m23;
	Mon, 05 Jan 2026 17:19:04 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcoEP-0000000Bo7U-1JLb
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Jan 2026 17:19:03 +0000
Received: by mail-ej1-x641.google.com with SMTP id a640c23a62f3a-b79d6a70fc8so31055766b.0
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Jan 2026 09:19:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1767633537; x=1768238337; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jyEq9qa7TDQIzBWJq5aVUtj/juytXvj0ykbdRsaUi5E=;
        b=CqFaxefakUQgZQn6LDfOJk+lFGitXTkywNZkltoQNF0z9/CEdNt6myO+TMYd61kBvP
         h963Ge6SD4h/oAFD8XYlTVPI9WOXYEuoXq8UB8IloUphdc8PizNxVUL0opO9vFiG3BF7
         ENnFs0v1Pt06huVQn7GCWZvFNdhXdTUelwo0U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767633537; x=1768238337;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jyEq9qa7TDQIzBWJq5aVUtj/juytXvj0ykbdRsaUi5E=;
        b=sXXHzB9ewafUhkuYgYUv0Fnfb7AwzJvq+JDpQRmJ2cu7NvOovGauBxxrr/Ex0b2eCI
         eQFVRWuw/sder1PM8Qs0U4GMygEVbJRHxJBGWFYoNdMO14B7iMsTXLKFMnXf+Jk9Nqjq
         AdnSJ6Q+45FpXE9bUUSHtz/JLvD4xIEBM162W+KyBSN7AopkNXcXA3VvVNcvujNgO14D
         wbrrBYqzHwbFwRdFLKj39brvwAfHyiGWWKXDBh2U8WxR+VVy7+noczXB0StNk+8AvfIZ
         Am/Cm8A8rBenw1vIzhqDmj+dXdaY9VD/64LphgWSj0DGyqDImqBg01lovKMs9Mm7m8DJ
         QqaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVK7Nvywl9+LKwrVPq/h+TCY96KrhYDCGguSaGMcSewO7tH4zQ7paem/1d0kg253jh9UKSD3Oz9bGKpcVPz/A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzaDJj635M+zPu8ySUUnDhaxuE0G2E3iPfIjh8jxfIjMDgIIx8M
	bfE4zCIgG8iIGwyoqUhxSrE1A7i4IaygUuwsIxNYyRwugU3jLvytnioX5xn+Q+kRdKQTqsUQyeP
	+Cx+oSTFR
X-Gm-Gg: AY/fxX4lOoqtQheZpIi44XKg6bs0XShz0lgJW+mxOY0jxaWyqbBOMyAZaCtt91Z9oFB
	N4YuONr0hkuN9mTQFtlq6zJVSwWuJc5ltCGEMOObISDFAXTz2qDGx05xwpXNsWm9ioCirLYAfJv
	hMCaatPilzLA3s0zAu6P3nAoZy5r5ZXoipBJn6VrKT02u79Cd9NzrL0pjQojJ+U+XW7XNUKfu8u
	CsX/3y+0om/vtpnjTk5nXRhU11zyito7AkbSfHEvei1aYg9ZENw7QOVuI0cYKMJz85Q1bgSssIt
	oMf7MFf3N37P0B1Pd7S6ruBVhRWiBNKhzwvIEaP3Y4wXQpgvmqHrQ8Z7/2nS1yre536pvKBPdAV
	fM4f1ZJ+NWf6Xe8tGxxakY8zmGQtrOwQ9Ti2LVTXFIEIIIFCjjblGZ9KBxXe0rz4JI7LbS6uvEP
	+wCAsd+gu7/FWTEeoF+wZYuqc9Ukq8MRHRa7Z5iVuk1r0gTZYS2g==
X-Google-Smtp-Source: AGHT+IEp0oPSLK+WNbNdug1ohTvlF5DHkzYdMUw11wDS2C2PNcIRtCCizHRxo1u/7RC/eWwflhTLXA==
X-Received: by 2002:a17:907:6d13:b0:b7d:1cbb:5d23 with SMTP id a640c23a62f3a-b8426a4c86fmr62698966b.2.1767633537418;
        Mon, 05 Jan 2026 09:18:57 -0800 (PST)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b84265ec744sm50754766b.23.2026.01.05.09.18.56
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 09:18:56 -0800 (PST)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42fed090e5fso47156f8f.1
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Jan 2026 09:18:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWql1R7mFvCEPJzj0IrWME4u0NVioQZux5tXfuJydMWr/wGx2+t0ZhkKtxLyfbrKhPahbvY+vTMHM7Nb9AAGw==@lists.infradead.org
X-Received: by 2002:a05:6000:2209:b0:432:b951:e9ff with SMTP id
 ffacd0b85a97d-432bca50942mr736622f8f.53.1767633535813; Mon, 05 Jan 2026
 09:18:55 -0800 (PST)
MIME-Version: 1.0
References: <cover.1767111804.git.robin.murphy@arm.com> <027763b36fbad2005d09eeb289b7716c57f65e76.1767111809.git.robin.murphy@arm.com>
In-Reply-To: <027763b36fbad2005d09eeb289b7716c57f65e76.1767111809.git.robin.murphy@arm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 5 Jan 2026 09:18:44 -0800
X-Gmail-Original-Message-ID: <CAD=FV=V4Q7MxsHJivfaO6JD5uW0Dqa4K1OsYmmerdsw5Apjkcw@mail.gmail.com>
X-Gm-Features: AQt7F2pluFldn98dXmv9Vd4lrpkG1uNZNZvh3TeVxvGJlWd-_jEbDvtmnHtLVpg
Message-ID: <CAD=FV=V4Q7MxsHJivfaO6JD5uW0Dqa4K1OsYmmerdsw5Apjkcw@mail.gmail.com>
Subject: Re: [PATCH 2/4] drm/panel-edp: Move FriendlyELEC HD702E
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org, thierry.reding@gmail.com, 
	sam@ravnborg.org, jesszhan0024@gmail.com, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_091901_414042_D235E0A3 
X-CRM114-Status: GOOD (  19.42  )
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

SGksCgpPbiBUdWUsIERlYyAzMCwgMjAyNSBhdCA5OjIw4oCvQU0gUm9iaW4gTXVycGh5IDxyb2Jp
bi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4KPiBGcmllbmRseUVMRUMncyBIRDcwMkUgbW9kdWxl
IGlzIGFuIGVEUCBwYW5lbCAoaW4gYXMgbXVjaCBhcyBpdCdzIHNvbWUKPiBMVkRTIExDRCBiZWhp
bmQgYSBDaHJvbnRlbCBDSDc1MTFCIGVEUCBicmlkZ2UpLCBzbyBtb3ZlIGl0cyBkYXRhIG92ZXIK
PiB0byB0aGUgZURQIGRyaXZlciwgYWxzbyByZXNvbHZpbmcgdGhlIHdhcm5pbmcgYWJvdXQgdGhl
IG1pc3NpbmcgYnBjCj4gdmFsdWUgaW4gdGhlIHByb2Nlc3MuCj4KPiBTaWduZWQtb2ZmLWJ5OiBS
b2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vcGFuZWwvcGFuZWwtZWRwLmMgICAgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKysrKwo+
ICBkcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtc2ltcGxlLmMgfCAyNSAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgMjUgZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLWVk
cC5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLWVkcC5jCj4gaW5kZXggNDE1Yjg5NDg5
MGFkLi5kZDUzY2NjMjA5Y2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3Bh
bmVsLWVkcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLWVkcC5jCj4gQEAg
LTEyNTYsNiArMTI1NiwyOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBhbmVsX2Rlc2MgYm9lX252
MTQwZmhtbjQ5ID0gewo+ICAgICAgICAgfSwKPiAgfTsKPgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0
IGRybV9kaXNwbGF5X21vZGUgZnJpZW5kbHlhcm1faGQ3MDJlX21vZGUgPSB7Cj4gKyAgICAgICAu
Y2xvY2sgICAgICAgICAgPSA2NzE4NSwKPiArICAgICAgIC5oZGlzcGxheSAgICAgICA9IDgwMCwK
PiArICAgICAgIC5oc3luY19zdGFydCAgICA9IDgwMCArIDIwLAo+ICsgICAgICAgLmhzeW5jX2Vu
ZCAgICAgID0gODAwICsgMjAgKyAyNCwKPiArICAgICAgIC5odG90YWwgICAgICAgICA9IDgwMCAr
IDIwICsgMjQgKyAyMCwKPiArICAgICAgIC52ZGlzcGxheSAgICAgICA9IDEyODAsCj4gKyAgICAg
ICAudnN5bmNfc3RhcnQgICAgPSAxMjgwICsgNCwKPiArICAgICAgIC52c3luY19lbmQgICAgICA9
IDEyODAgKyA0ICsgOCwKPiArICAgICAgIC52dG90YWwgICAgICAgICA9IDEyODAgKyA0ICsgOCAr
IDQsCj4gKyAgICAgICAuZmxhZ3MgICAgICAgICAgPSBEUk1fTU9ERV9GTEFHX05WU1lOQyB8IERS
TV9NT0RFX0ZMQUdfTkhTWU5DLAo+ICt9Owo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBwYW5l
bF9kZXNjIGZyaWVuZGx5YXJtX2hkNzAyZSA9IHsKPiArICAgICAgIC5tb2RlcyA9ICZmcmllbmRs
eWFybV9oZDcwMmVfbW9kZSwKPiArICAgICAgIC5udW1fbW9kZXMgPSAxLAo+ICsgICAgICAgLmJw
YyA9IDgsCj4gKyAgICAgICAuc2l6ZSA9IHsKPiArICAgICAgICAgICAgICAgLndpZHRoICA9IDk0
LAo+ICsgICAgICAgICAgICAgICAuaGVpZ2h0ID0gMTUxLAo+ICsgICAgICAgfSwKPiArfTsKPiAr
Cj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSBpbm5vbHV4X24xMTZiY2Ff
ZWExX21vZGUgPSB7Cj4gICAgICAgICAuY2xvY2sgPSA3NjQyMCwKPiAgICAgICAgIC5oZGlzcGxh
eSA9IDEzNjYsCj4gQEAgLTE2NjMsNiArMTY4Niw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2Zf
ZGV2aWNlX2lkIHBsYXRmb3JtX29mX21hdGNoW10gPSB7Cj4gICAgICAgICB9LCB7Cj4gICAgICAg
ICAgICAgICAgIC5jb21wYXRpYmxlID0gImJvZSxudjE0MGZobW40OSIsCj4gICAgICAgICAgICAg
ICAgIC5kYXRhID0gJmJvZV9udjE0MGZobW40OSwKPiArICAgICAgIH0sIHsKPiArICAgICAgICAg
ICAgICAgLmNvbXBhdGlibGUgPSAiZnJpZW5kbHlhcm0saGQ3MDJlIiwKPiArICAgICAgICAgICAg
ICAgLmRhdGEgPSAmZnJpZW5kbHlhcm1faGQ3MDJlLAoKRG8geW91IGFjdHVhbGx5IG5lZWQgdGhp
cz8gSSBub3RpY2UgdGhhdCBpbiB0aGUgRFRTIHBhdGNoIHlvdSd2ZSBnb3QKdGhpbmdzIHVuZGVy
IHRoZSBEUCBBVVggYnVzLCB3aGljaCBzaG91bGQgZW5hYmxlIHlvdSB0byB1c2UgdGhlCmdlbmVy
aWMgImVkcC1wYW5lbCIgY29tcGF0aWJsZSBzdHJpbmcgYXNzdW1pbmcgdGhlIEVESUQgaXMgcG9w
dWxhdGVkCnByb3Blcmx5IGFuZCB0aGVyZSBhcmUgbm8gcHJvYmxlbXMgd2l0aCBwb3dlciBzZXF1
ZW5jaW5nLiBJTU8gdGhlIG9ubHkKcmVhc29ucyB3ZSBzaG91bGQgYmUgYWRkaW5nIG5ldyBlbnRy
aWVzIHRvICJwbGF0Zm9ybV9vZl9tYXRjaCIgdGhlc2UKZGF5cyBpcyBpZiB3ZSBuZWVkIHRvIHdv
cmsgd2l0aCBzb21lIGxlZ2FjeSBlRFAgY29udHJvbGxlciB0aGF0IGNhbid0CmJlIHVwZGF0ZWQg
dG8gaGFuZGxlIHRoZSBEUCBBVVggQlVTIG9yIHdlJ3ZlIGdvdCBhIGNvbnRyb2xsZXIgd2l0aCBh
CmJvZ3VzIEVESUQuLi4KCi1Eb3VnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
