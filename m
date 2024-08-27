Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDE69C5472D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 03:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gdHB+0tL49bvycKZozWGcBVqk3jtFXsP3PqButGkVY=; b=EKjsIOkueOMv5s
	cKgn/sONAJ0u/nWT/iCf0XkZlGceATZMBiwDu8VhGwNdWCqNJ/2qL6LE5rMFMOVi2c+pD7A2CZPTV
	8gJOrA9vXJBnwd7Vpr/PfnyNBigwWvnVQ5GIpUohFyLXBuBbiGpLN9SErDVSNZqnRhtJsZHgvmq9l
	3hnakdJSo6xarUUwlP0R8CIkvwl0k2W7PcgP9slW+2woY+E2EqVDNkqbOfq4BgD+UvlvUI2RBc6eT
	gRWl7mY1DvH7oWZzQv+bdDOmOUotq62+nh9mSfzKxgc6+0XrGGvkcYhH6xb93Alg3hDcG8IrL6Mk7
	t5rnu6pllEZ/6XnHOWdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1simSw-00000009XM8-0Jgq;
	Tue, 27 Aug 2024 03:01:54 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1simRF-00000009X3W-3p2M
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 03:00:11 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1fec34f94abso49511425ad.2
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2024 20:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724727609; x=1725332409; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PesMy6+ZaljaMwUP3eDOzaceYGNPFc9NY5RXT3Ln9yg=;
        b=V1rjOqt+a2RrYEP4eYKaJNtKsfDA+8+P5VgPL8cskG9epR7Rd4k3SyyHhViUTXabJ1
         AtT2q0eFS9+cnbKlPEQDvIgX9gqV9S58Dmann2O5BRPlYU9P5q3NoDpnkUY4TrpsVVVR
         b8S1nAZiBljiCpZwLaC72M9+anhV5+IOiQS5c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724727609; x=1725332409;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PesMy6+ZaljaMwUP3eDOzaceYGNPFc9NY5RXT3Ln9yg=;
        b=cLMmOAXhCNy8g7CY0WPpumMhcvVcJzHonStvJ3JVSR3cuu5X9//QQzNBSl7UPpnIMs
         SBJMgJovJmT2eplmU2hMusT2WwYe700wGfp027c28JhbYFBCnYuTnnEhwmTr2Wzjs01B
         VoKi4bscAAibCV/J1COivdM0gCaw+i9IwfcBNYdOoDnX6Twpg7xplC1lTJGQnaymSAbK
         nSvBK8q1vU6qJ1TJQEE1mSsPC4L3BipjNObsuCu4GEJ5oJbJ4jGj3xbK8oys9oImymU0
         9c/tY3pqXQ3s7igWsrX08BINm/eikwFQiNfeHk5dwS/zzxYnyTC+Bw5tZCNzRz7k6RaN
         LClw==
X-Forwarded-Encrypted: i=1; AJvYcCVZEnBFp2xJykO2X6jtIQtgg1ka7Rf76dj4xLObJ/dj7v8ByyWyHHHFRzpe5XQrDsbTrjUrCJCX3k4Uqbkrww==@lists.infradead.org
X-Gm-Message-State: AOJu0YwgHvFciBaytGKI7ycZZpetJdE/eYES9ZP5n8CZiCvaucfc5hXV
	ECO1YAvwPvJb3rVViMMhWm70Wba9oF7hBM9tIArUpx6wjQge+/pqX9fBT8k3a1VSxg0U3nVBQ4A
	=
X-Google-Smtp-Source: AGHT+IE3j8SMQX6dove+6nQWIXgMo1hL2notlC5GSqKRVKCa9rhifyaKs9x2P9Zqd98ziyZLwrNKdg==
X-Received: by 2002:a17:902:ea0f:b0:1fb:75b6:a40b with SMTP id d9443c01a7336-2039e44af30mr160813045ad.2.1724727608653;
        Mon, 26 Aug 2024 20:00:08 -0700 (PDT)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com. [209.85.214.175])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-203855dbfa5sm73942455ad.141.2024.08.26.20.00.08
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 20:00:08 -0700 (PDT)
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-202018541afso82145ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2024 20:00:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXvSeIAFZoKEJJEKRlKQ169Y2XWQvozt6WpnzCxR2etqGzVWPmPSZCpXDV9SRrN/bAWRxs0l4ZU94CtVm+kTA==@lists.infradead.org
X-Received: by 2002:a17:903:187:b0:1fb:1a7:a64f with SMTP id
 d9443c01a7336-204e1351fa3mr1790775ad.20.1724727606755; Mon, 26 Aug 2024
 20:00:06 -0700 (PDT)
MIME-Version: 1.0
References: <20240825035422.900370-1-jon.lin@rock-chips.com>
 <Zs0BRsNdZdI69aXM@google.com> <27302919-5bcd-4bcd-bdad-02aa48e628e9@rock-chips.com>
In-Reply-To: <27302919-5bcd-4bcd-bdad-02aa48e628e9@rock-chips.com>
From: Brian Norris <briannorris@chromium.org>
Date: Mon, 26 Aug 2024 19:59:53 -0700
X-Gmail-Original-Message-ID: <CA+ASDXMjN7dVUQWgfMULcD2KgF448-q=Ue2+MYUftK6Ra8MWhw@mail.gmail.com>
Message-ID: <CA+ASDXMjN7dVUQWgfMULcD2KgF448-q=Ue2+MYUftK6Ra8MWhw@mail.gmail.com>
Subject: Re: [PATCH] spi: rockchip: Avoid redundant clock disable in pm operation
To: Jon Lin <jon.lin@rock-chips.com>
Cc: broonie@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, heiko@sntech.de, 
	linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_200010_000203_634DCC2F 
X-CRM114-Status: GOOD (  23.01  )
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

T24gTW9uLCBBdWcgMjYsIDIwMjQgYXQgNjozM+KAr1BNIEpvbiBMaW4gPGpvbi5saW5Acm9jay1j
aGlwcy5jb20+IHdyb3RlOgo+IE9uIDIwMjQvOC8yNyA2OjI3LCBCcmlhbiBOb3JyaXMgd3JvdGU6
Cj4gPiBJdCBzZWVtcyBsaWtlIHlvdSdkIHJlYWxseSBiZSBzZXJ2ZWQgd2VsbCBieQo+ID4gcG1f
cnVudGltZV9mb3JjZV97c3VzcGVuZCxyZXN1bWV9KCkgaGVyZSwgYW5kIGluIGZhY3QsIHRoYXQn
cyB3aGF0IHRoaXMKPiA+IGRyaXZlciB1c2VkIHRvIHVzZSBiZWZvcmUgdGhlIGJyZWFraW5nIGNo
YW5nZSAoY29tbWl0Cj4gPiBlODgyNTc1ZWZjNzcpLiBXaHkgYXJlbid0IHlvdSBqdXN0IGdvaW5n
IGJhY2sgdG8gdXNpbmcgaXQ/IChUaGlzIGlzIHRoZQo+ID4ga2luZCBvZiB0aGluZyBJIG1pZ2h0
IGV4cGVjdCBpbiB5b3VyIGNvbW1pdCBtZXNzYWdlIC0tIHJlYXNvbmluZyBhcyB0bwo+ID4gd2h5
IHlvdSdyZSBkb2luZyB3aGF0IHlvdSdyZSBkb2luZy4pCj4gPgo+ID4gQW5kIGluIGZhY3QsIEkg
YWxyZWFkeSBzdWJtaXR0ZWQgYSBwYXRjaCB0aGF0IHJlc29sdmVzIHRoZSBhYm92ZSBwcm9ibGVt
Cj4gPiBhbmQgZG9lcyBleGFjdGx5IHRoYXQ6Cj4gPgo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLzIwMjQwODIzMjE0MjM1LjE3MTg3NjktMS1icmlhbm5vcnJpc0BjaHJvbWl1bS5vcmcv
Cj4gPiBbUEFUQ0hdIHNwaTogcm9ja2NoaXA6IFJlc29sdmUgdW5iYWxhbmNlZCBydW50aW1lIFBN
IC8gc3lzdGVtIFBNIGhhbmRsaW5nCj4gPgo+ID4gRG8geW91IHNlZSBhbnkgcHJvYmxlbSB3aXRo
IGl0Pwo+ID4KPgo+IEkgaGF2ZSByZXZpZXdlZCB5b3VyIHN1Ym1pc3Npb24gYW5kIGFsdGhvdWdo
IHRoZSBjb2RlIGhhcyBiZWVuCj4gc2ltcGxpZmllZCwgdGhlIGV4ZWN1dGlvbiBlZmZpY2llbmN5
IGhhcyBkZWNyZWFzZWQuIFNvIGFsdGhvdWdoIGl0IGlzIGEKPiBjb21tb25seSB1c2VkIHByb2Nl
c3Npbmcgc29sdXRpb24gZm9yIFNQSSBVcHN0cmVhbSwgSSBzdGlsbCBob3BlIHRvCj4gcmV0YWlu
IGEgbW9yZSBlZmZpY2llbmN5IGFwcHJvYWNoIGFzIEkgc3VibWl0dGVkLgoKV2hhdCBkbyB5b3Ug
bWVhbiBieSAiZWZmaWNpZW5jeSI/IFlvdSBtZWFuIGJlY2F1c2UgdGhlcmUncwppbmRpcmVjdGlv
biwgdmlhIHRoZSBQTSBydW50aW1lIGZyYW1ld29yaz8gSWYgc28sIEkgZG91YnQgdGhhdCdzIGEK
cHJpb3JpdHkgZm9yIHRoaXMgcGllY2Ugb2YgZnVuY3Rpb25hbGl0eSAtLSBzaW1wbGljaXR5IGlz
IG1vcmUKaW1wb3J0YW50IHRoYW4gYSBmdW5jdGlvbiBjYWxsIG9yIHR3byB3aGVuIHRhbGtpbmcg
YWJvdXQgc3lzdGVtCnN1c3BlbmQuCgpBZGRpdGlvbmFsbHksIHNpbXBsaWNpdHkgaGFzIGFkZGl0
aW9uYWwgYmVuZWZpdHMgLS0gaXQgaGVhZHMgb2ZmCnF1ZXN0aW9ucyB0aGF0IHlvdXIgbW9yZSBj
b21wbGV4IGNvZGUgZG9lc24ndCBhZGRyZXNzLiBGb3IgZXhhbXBsZSwKYXJlIHJ1bnRpbWUgUE0g
YW5kIHN5c3RlbSBQTSBtdXR1YWxseSBleGNsdXNpdmU/IERvIHdlIGhhdmUgdG8KY29vcmRpbmF0
ZSB3aXRoIGFueSBwZW5kaW5nIGF1dG9zdXNwZW5kPyAoUmVhZGluZyB0aHJvdWdoCmh0dHBzOi8v
ZG9jcy5rZXJuZWwub3JnL3Bvd2VyL3J1bnRpbWVfcG0uaHRtbCwgSSBiZWxpZXZlIHRoZXNlIGFy
ZSBub3QKYWN0dWFsbHkgY29uY2VybnMsIGJ1dCBpdCdzIHJlYWxseSBub3Qgb2J2aW91cyBhbmQg
dGFrZXMgYSBiaXQgb2YKcmVhZGluZy4pIEJ1dCB5b3VyIHBhdGNoIG1ha2VzIGl0IG1vcmUgbGlr
ZWx5IHRoYXQgcnVudGltZSBhbmQgc3lzdGVtClBNIHN0YXRlcyBnZXQgb3V0IG9mIHN5bmMuCgpB
bnl3YXksIGlmIHRoZSBwYXRjaGVzIHJlYWxseSBhcmUgZXF1aXZhbGVudCwgSSBzdXBwb3NlIGl0
IGNhbiBiZSB0aGUKbWFpbnRhaW5lcidzIGNob2ljZSBhcyB0byB3aGljaCBpcyBwcmVmZXJhYmxl
LgoKQnJpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
