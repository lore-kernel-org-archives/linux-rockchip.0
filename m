Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72760C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jan 2022 09:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NaVj9HBA+9ndNqy+CjvEJeop7wT3Te0ljxh6yBmt4lI=; b=zqDS5JUnm/ZdJ0hvpVEhGC+CgX
	pN6A4MedCjlVhe1jrDRDgCJYdkebXvJqcj5YeyJbUFhwWecQ8gcF1ImKoSgRAOnTkSxEzUYFulVYO
	OidRmaxlPt2rKLNBvo4gq6wBvuE9eZrqyaY3RNrrrW3PrwsX5EsWRMTlz2bCR+tBgvYURPnX55cv2
	rvzW83vlpbqV/aUO7GvVb0SYPvzqTYdcmVKXcrNSp2ZcnbzykHMQZ2Hj3xk2hC2Gqsg5fjniLI1DA
	immuwyrjR+f3jdIHdqvpCEfLyS6iAKqkzAnD/xa6ArhIVI8Ixiurt6wK6uPSlfWkZUOOPsyS/1T9N
	lkKyyj7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n52Uk-00EKVz-CQ; Wed, 05 Jan 2022 09:22:10 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n52Uh-00EKSF-5k
 for linux-rockchip@lists.infradead.org; Wed, 05 Jan 2022 09:22:09 +0000
Received: by mail-wr1-x436.google.com with SMTP id i22so81596180wrb.13
 for <linux-rockchip@lists.infradead.org>; Wed, 05 Jan 2022 01:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=36HWW0hYRMzTGJgOF2Hhqt8UhNo3eiE5xA5YF+rYVCA=;
 b=ExXs4oRL1W7tObWa/h9o4bst7B77VUpcnP6vebd/XcxHcsuHjJYP46sBunAzmARIXH
 Fm+aNa7Tp3LTRCU08jKBszK7n0w5rKk8VRmGdj0OJzjUiD4xalgu0gZnZzAdilOWBqWE
 H/ez/MCvgnmaUCsVzwh1q4/jGLXhoKglfWwFtWz/GBcYkK+h860DbRF4VcqAijsnPE87
 ii2W+r6GA+lEj2amkAhEFxiPqXw9ZPT/ZJEyS8yhi9LMcE4OP1eEQiLT06HfgRFLnOpr
 JLBUfQuZHbAfqZJORLmqEOR2vA69h2KXv+NGuygBVhaEFAaSF5mSNy8Zh0240Ry+6+zV
 uGiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=36HWW0hYRMzTGJgOF2Hhqt8UhNo3eiE5xA5YF+rYVCA=;
 b=Pu6DevUuiTZhNkdkBcAdy47NqMFQeKjzMkS1dx8o2bNC5kKAS5bgwBkYWyjS6mIve1
 u1lpgJtOcNj6ZM/nMMFSZJWDMYKD34n5LFYf49595TnSmnmMZnZ0+JLQ1nNinDQ2unTC
 jime6JKSsixJHLpC6T6xBtQ9eRjt2VuAxhLxisLG5cA2jkvrgHEZIC1KMGkSxjwHSpEH
 YgZO0DxWhFn6KFbNrFRGoLM7hCT+kmIHv07eNGwnt+SKeiZrUaMkCJqvVNhJ7WJWFIBp
 xFw8MRx3B09wmBIqW/I61Iay2YMp9e5L3cpm4ADhMHCB5j7ekcgKQ5PO7F154EUI18lz
 zGKg==
X-Gm-Message-State: AOAM530EYyBYttTWA8/jCE9M8vV+TtnEtQcBRehBAj/HNxtye+5Sj7RI
 x8+rXHJ7PjDtoUKPGMqD57eAweEPoA6Hrirm
X-Google-Smtp-Source: ABdhPJxrVfKVBzchLy0D6aJ/irztUnYgE5NOowgvLeaVDTqUhmw1be6mFqctzKDqkax6Ez+eV65Y4A==
X-Received: by 2002:adf:df09:: with SMTP id y9mr45140559wrl.594.1641374520220; 
 Wed, 05 Jan 2022 01:22:00 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:9997:55b1:2e48:dc4a?
 ([2a01:e34:ed2f:f020:9997:55b1:2e48:dc4a])
 by smtp.googlemail.com with ESMTPSA id b4sm1537957wrw.4.2022.01.05.01.21.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Jan 2022 01:21:59 -0800 (PST)
Subject: Re: [PATCH v5 5/6] rockchip/soc/drivers: Add DTPM description for
 rk3399
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: Rob Herring <robh@kernel.org>, rjw@rjwysocki.net, lukasz.luba@arm.com,
 heiko@sntech.de, arnd@linaro.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <20211218130014.4037640-1-daniel.lezcano@linaro.org>
 <20211218130014.4037640-6-daniel.lezcano@linaro.org>
 <CAPDyKFqWUJTKte3dM=7xG6EtKR8i9neCCNYFs7Jf1J34TezUEQ@mail.gmail.com>
 <CAMuHMdXzs9WMksQAJXdYaQndsqK3CnQZTGYw=TSFVrDEdX8PCA@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <08787cb7-439e-74a4-f268-6c8de0d60a30@linaro.org>
Date: Wed, 5 Jan 2022 10:21:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXzs9WMksQAJXdYaQndsqK3CnQZTGYw=TSFVrDEdX8PCA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_012207_267953_1BE96BAE 
X-CRM114-Status: GOOD (  26.28  )
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

CkhpIEdlZXJ0LAoKdGhhbmtzIGZvciB5b3VyIGZlZWRiYWNrCgpPbiAwNC8wMS8yMDIyIDEwOjI5
LCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gT24gRnJpLCBEZWMgMzEsIDIwMjEgYXQgMjo1
OCBQTSBVbGYgSGFuc3NvbiA8dWxmLmhhbnNzb25AbGluYXJvLm9yZz4gd3JvdGU6Cj4+IE9uIFNh
dCwgMTggRGVjIDIwMjEgYXQgMTQ6MDAsIERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0Bs
aW5hcm8ub3JnPiB3cm90ZToKPj4+IFRoZSBEVFBNIGZyYW1ld29yayBkb2VzIHN1cHBvcnQgbm93
IHRoZSBoaWVyYXJjaHkgZGVzY3JpcHRpb24uCj4+Pgo+Pj4gVGhlIHBsYXRmb3JtIHNwZWNpZmlj
IGNvZGUgY2FuIGNhbGwgdGhlIGhpZXJhcmNoeSBjcmVhdGlvbiBmdW5jdGlvbgo+Pj4gd2l0aCBh
biBhcnJheSBvZiBzdHJ1Y3QgZHRwbV9ub2RlIHBvaW50aW5nIHRvIHRoZWlyIHBhcmVudC4KPj4+
Cj4+PiBUaGlzIHBhdGNoIHByb3ZpZGVzIGEgZGVzY3JpcHRpb24gb2YgdGhlIGJpZyBhbmQgTGl0
dGxlIENQVXMgYW5kIHRoZQo+Pj4gR1BVIGFuZCB0aWUgdGhlbSB0b2dldGhlciB1bmRlciBhIHZp
cnR1YWwgcGFja2FnZSBuYW1lLiBPbmx5IHJrMzM5OSBpcwo+Pj4gZGVzY3JpYmVkIG5vdy4KPj4+
Cj4+PiBUaGUgZGVzY3JpcHRpb24gY291bGQgYmUgZXh0ZW5kZWQgaW4gdGhlIGZ1dHVyZSB3aXRo
IHRoZSBtZW1vcnkKPj4+IGNvbnRyb2xsZXIgd2l0aCBkZXZmcmVxIGlmIGl0IGhhcyB0aGUgZW5l
cmd5IGluZm9ybWF0aW9uLgo+Pj4KPj4+IFRoZSBoaWVyYXJjaHkgdXNlcyB0aGUgR1BVIGRldmZy
ZXEgd2l0aCB0aGUgcGFuZnJvc3QgZHJpdmVyLCBhbmQgdGhpcwo+Pj4gb25lIGNvdWxkIGJlIGxv
YWRlZCBhcyBhIG1vZHVsZS4gSWYgdGhlIGhpZXJhcmNoeSBpcyBjcmVhdGVkIGJlZm9yZQo+Pj4g
dGhlIHBhbmZyb3N0IGRyaXZlciBpcyBsb2FkZWQsIGl0IHdpbGwgZmFpbC4gRm9yIHRoaXMgcmVh
c29uIHRoZQo+Pj4gS2NvbmZpZyBvcHRpb24gZGVwZW5kcyBvbiB0aGUgcGFuZnJvc3QgS2NvbmZp
ZydzIG9wdGlvbi4gSWYgdGhpcyBvbmUKPj4+IGlzIGNvbXBpbGVkIGFzIGEgbW9kdWxlLCBhdXRv
bWF0aWNhbGx5IHRoZSBkdHBtIGhpZXJhcmNoeSBjb2RlIHdpbGwgYmUKPj4+IGEgbW9kdWxlIGFs
c28uIE1vZHVsZSBsb2FkaW5nIG9yZGVyaW5nIHdpbGwgZml4IHRoaXMgY2hpY2tlbi1lZ2cKPj4+
IHByb2JsZW0uCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIExlemNhbm8gPGRhbmllbC5s
ZXpjYW5vQGxpbmFyby5vcmc+Cj4gCj4+PiAtLS0gL2Rldi9udWxsCj4+PiArKysgYi9kcml2ZXJz
L3NvYy9yb2NrY2hpcC9kdHBtLmMKPj4+IEBAIC0wLDAgKzEsNTYgQEAKPj4+ICsvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4+PiArLyoKPj4+ICsgKiBDb3B5cmlnaHQg
MjAyMSBMaW5hcm8gTGltaXRlZAo+Pj4gKyAqCj4+PiArICogQXV0aG9yOiBEYW5pZWwgTGV6Y2Fu
byA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KPj4+ICsgKgo+Pj4gKyAqIERUUE0gaGllcmFy
Y2h5IGRlc2NyaXB0aW9uCj4+PiArICovCj4+PiArI2luY2x1ZGUgPGxpbnV4L2R0cG0uaD4KPj4+
ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4+PiArI2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4+
PiArI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+Pj4gKwo+Pj4gK3N0YXRpYyBz
dHJ1Y3QgZHRwbV9ub2RlIF9faW5pdGRhdGEgcmszMzk5X2hpZXJhcmNoeVtdID0gewo+Pj4gKyAg
ICAgICBbMF17IC5uYW1lID0gInJrMzM5OSIgfSwKPj4+ICsgICAgICAgWzFdeyAubmFtZSA9ICJw
YWNrYWdlIiwKPj4+ICsgICAgICAgICAgICAucGFyZW50ID0gJnJrMzM5OV9oaWVyYXJjaHlbMF0g
fSwKPj4+ICsgICAgICAgWzJdeyAubmFtZSA9ICIvY3B1cy9jcHVAMCIsCj4+PiArICAgICAgICAg
ICAgLnR5cGUgPSBEVFBNX05PREVfRFQsCj4+PiArICAgICAgICAgICAgLnBhcmVudCA9ICZyazMz
OTlfaGllcmFyY2h5WzFdIH0sCj4+PiArICAgICAgIFszXXsgLm5hbWUgPSAiL2NwdXMvY3B1QDEi
LAo+Pj4gKyAgICAgICAgICAgIC50eXBlID0gRFRQTV9OT0RFX0RULAo+Pj4gKyAgICAgICAgICAg
IC5wYXJlbnQgPSAmcmszMzk5X2hpZXJhcmNoeVsxXSB9LAo+Pj4gKyAgICAgICBbNF17IC5uYW1l
ID0gIi9jcHVzL2NwdUAyIiwKPj4+ICsgICAgICAgICAgICAudHlwZSA9IERUUE1fTk9ERV9EVCwK
Pj4+ICsgICAgICAgICAgICAucGFyZW50ID0gJnJrMzM5OV9oaWVyYXJjaHlbMV0gfSwKPj4+ICsg
ICAgICAgWzVdeyAubmFtZSA9ICIvY3B1cy9jcHVAMyIsCj4+PiArICAgICAgICAgICAgLnR5cGUg
PSBEVFBNX05PREVfRFQsCj4+PiArICAgICAgICAgICAgLnBhcmVudCA9ICZyazMzOTlfaGllcmFy
Y2h5WzFdIH0sCj4+PiArICAgICAgIFs2XXsgLm5hbWUgPSAiL2NwdXMvY3B1QDEwMCIsCj4+PiAr
ICAgICAgICAgICAgLnR5cGUgPSBEVFBNX05PREVfRFQsCj4+PiArICAgICAgICAgICAgLnBhcmVu
dCA9ICZyazMzOTlfaGllcmFyY2h5WzFdIH0sCj4+PiArICAgICAgIFs3XXsgLm5hbWUgPSAiL2Nw
dXMvY3B1QDEwMSIsCj4+PiArICAgICAgICAgICAgLnR5cGUgPSBEVFBNX05PREVfRFQsCj4+PiAr
ICAgICAgICAgICAgLnBhcmVudCA9ICZyazMzOTlfaGllcmFyY2h5WzFdIH0sCj4+PiArICAgICAg
IFs4XXsgLm5hbWUgPSAicm9ja2NoaXAscmszMzk5LW1hbGkiLAo+Pj4gKyAgICAgICAgICAgIC50
eXBlID0gRFRQTV9OT0RFX0RULAo+Pj4gKyAgICAgICAgICAgIC5wYXJlbnQgPSAmcmszMzk5X2hp
ZXJhcmNoeVsxXSB9LAo+Pj4gKyAgICAgICBbOV17IH0sCj4+PiArfTsKPj4KPj4gSSB3aWxsIG5v
dCBvYmplY3QgdG8gdGhpcywgYXMgaW4gdGhlIGVuZCB0aGlzIHNlZW1zIGxpa2Ugd2hhdCB3ZSBu
ZWVkCj4+IHRvIGRvLCB1bmxlc3Mgd2UgY2FuIGRlc2NyaWJlIHRoaW5ncyB0aHJvdWdoIGdlbmVy
aWMgRFQgYmluZGluZ3MgZm9yCj4+IERUUE0uIFJpZ2h0Pwo+Pgo+PiBBbHRob3VnaCwgaWYgdGhl
IGFib3ZlIGlzIGNvcnJlY3QsIEkgbmVlZCB0byBzdHJlc3MgdGhhdCBJIGFtIGtpbmQgb2YKPj4g
d29ycmllZCB0aGF0IHRoaXMgZG9lc24ndCByZWFsbHkgc2NhbGUuIFdlIHdvdWxkIG5lZWQgdG8g
Y29weSBsb3RzIG9mCj4+IGluZm9ybWF0aW9uIGZyb20gdGhlIERUUyBmaWxlcyBpbnRvIHBsYXRm
b3JtIHNwZWNpZmljIGMtZmlsZXMsIHRvIGJlCj4+IGFibGUgdG8gZGVzY3JpYmUgdGhlIERUUE0g
aGllcmFyY2h5Lgo+IAo+IFRoZSBkZXNjcmlwdGlvbiBpbiByazMzOTlfaGllcmFyY2h5W10gbG9v
a3MgZmFpcmx5IHNpbWlsYXIgdG8gYQo+IHBvd2VyLWRvbWFpbnMgaGllcmFyY2h5LCBsaWtlIHdl
IGhhdmUgaW4gZS5nLiB0aGUgdmFyaW91cwo+IGRyaXZlcnMvc29jL3JlbmVzYXMvcjgqLXN5c2Mu
YyBmaWxlcy4gIE9uZSBiaWcgZGlmZmVyZW5jZSBpcyB0aGF0IHRoZQo+IGxhdHRlciBkbyBub3Qg
aGFyZGNvZGUgdGhlIG5vZGUgcGF0aHMgaW4gdGhlIGRyaXZlciwgYnV0IHVzZSBwb3dlcgo+IGRv
bWFpbiBpbmRpY2VzLCByZWZlcmVuY2VkIGZyb20gRFQgaW4gcG93ZXItZG9tYWlucyBwcm9wZXJ0
aWVzLgo+IAo+IFBlcmhhcHMgYSBzaW1pbGFyIGFwcHJvYWNoIGNhbiBiZSB1c2VkIGZvciBEVFBN
Pwo+IERvZXMgRFRQTSBkaWZmZXIgYSBsb3QgZnJvbSBQTSBEb21haW5zPyAKClllcyB0aGV5IGRp
ZmZlci4gQSBEVFBNIG5vZGUgaXMgYSBwb3dlcnpvbmUsIGEgcGxhY2Ugd2hlcmUgd2UgY2FuIGdl
dAphbmQgc2V0IHRoZSBwb3dlci4KClRoYXQgaXMgdGhlIHJlYXNvbiB3aHkgaW5pdGlhbGx5IGEg
c2VwYXJhdGUgYmluZGluZyB3YXMgcHJvcG9zZWQuCgo+IElmIG5vdCwgcGVyaGFwcyBubyBuZXcK
PiBwcm9wZXJ0aWVzIGFyZSBuZWVkZWQsIGFuZCBwb3dlci1kb21haW5zLyNwb3dlci1kb21haW4t
Y2VsbHMgY2FuIGJlCj4gdXNlZCBhcyBpcz8KCgoKCi0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3Jn
Lz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xs
b3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJv
b2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8v
d3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
