Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8FE1C61CE8
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Jun 2025 16:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubeZuYTbwEyIbfaz9uUrdF+q6PgL/LWgPhkrGTs2evs=; b=dyk0uYp4LxfdZ/
	ecFA53v9Mc5w9OFz3WJ52s5veuceMAiwf6rmj8bx45XuptI/f+ghtXGqsyco4tTVKWturEQI5SZE/
	5ryoJmsUok1Yz3+dDtTezJrBG9bMif8r2kmVkxw1MxXMekY2M7isRQwSH6Sy9iye3CBrP8BXGGCNM
	vsv1nYT5Fmm2afx1xv7RtFBK3RL6SL2Oc31l9AvXJTlSy/9/FXxHSniR+Na0ToWbWo51N2tg3OBQr
	uYxJdVY6VuCAmK5Ee72/DBNpHiVmn5RyTAJIjJDLs5UyI3gLXHOr65mQim43UtgVDpB9wWp77wu9Y
	zUKXXbH/pqOEg5LrCUbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQpoQ-00000002deT-0DJi;
	Sun, 15 Jun 2025 16:02:26 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQpmC-00000002dVs-1XWm;
	Sun, 15 Jun 2025 16:00:10 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-ade33027bcfso587721266b.1;
        Sun, 15 Jun 2025 09:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750003206; x=1750608006; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/42QMcL77lI71D+Z1SeldcA7X3YrhfS5BoiK/HqtWsg=;
        b=WbuY9aFWRrAkr+uzSkClL7uUquBm9yr3P5Kmg3d779aAcxYFyvFoqcJPsCAVCd2P3P
         JB6NxhlUeVG11U4BqRQfQ9ZYA0Hdt4LcX0p99mURlc+fxDpoXAYcv4Z6FvvG5stpbUha
         iA9mDfCVyCHy+JIzQ+FFva/2ewlUifo3Lh4xNTV5UQt669zdicJUSzg073Brg2+xT2+u
         i2jRNFknnEL8PKMon+Uw11Bngga2zpwLjlIWpgHUq5Gx0e0/Nzm7AYdcX76Uieic1FSo
         qUwi3cKXvue537WhH7gnKXEFZbcs8tHKK8UaN+Fd9WIZ8wZdN+Oew5hKtZxK10t5xZeZ
         7/9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750003206; x=1750608006;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/42QMcL77lI71D+Z1SeldcA7X3YrhfS5BoiK/HqtWsg=;
        b=MUz84117Y+KjrvvaNJhMLzIkXJjm5+5itduQNKcdKHZGbs9AOyq2GtScV5euWbuYRA
         k50j2ZeHuSLCdxIJdKvPZEvWcQgxHLSgZJ0W98Nic8DjrfciVMBETcvRmHe3llQwSAt8
         foxTU4O2JTh8R/JUaNZjjEprNNtIn1p/3QARBogT/iMJ6X0lQfTXgr/y0rcNEc6AJ9sK
         gZK+LaMeD8TXCj5jryXA7oGCpzPB2XMx5vISYwMdXDoKtWpV1BrrDqmFONRVRKjm9GRm
         7KbGdUdSlVpsLr1tQvUdWFddmf3nEd0/6hfl05W+t8zbY5oIDpxboXFr00v4bMoWXwsQ
         twBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVdG3Lu1/PpdSGDV4LYhM6gCxv238J5QIEdIld3RppEWEN3V8+ncPkHb5/F8VJ00rEP2NPOIwGZIYEU5bsclYMl@lists.infradead.org, AJvYcCWrqW1Dx1K5aEURuL7Pv5YGZqNhDTf2EWHHprIS/GZT7/pPGPTctj1ocobuctXMhhd4O5O+p3qih/XE6Lpcews=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx75+WaM4bfk4P1M84V5Cc50oXjalgZGx+Npmaj+jSjIBOqcPCA
	A0QwnJevE3jHxYFiHYV1a1B9Yuxdn/aDnz9ozGI+qy7Nfcmlo9NFYW8h27ghkA==
X-Gm-Gg: ASbGnctoDW9h8b1b688Q5NqZzXB/5UqbtmIA9CpZPGpLNiMi+WeCIcen+EsKOczyONO
	/WwR0JHT4rhM3IgpQeXen0e0gv1C2ZmAfvGHHwU1nS2rpvHhpkdOd6/smvK7RJjWSak71tGDMzc
	cShkvH7hXU21iwNf6x9rsN7X2Iy0JL4SgPVeooyp2evHgAcSI9AFobB1gkh+lkc7rsQtJbfAIEa
	iw/dlD9361R4T4RFYaQFPxn4r93O6GtfpCNr0Oot78N1imfq4q37Mmye9JswQ44+gP3DLMzQcAT
	zRyAAXkZN8K/0ZsiM7Kcw7mmSTmWmpmMM5euuUM3BeqyxViUdL9fKjNAvbbzLc6xvL59kUE01nx
	6GqeQ4NT8Eg==
X-Google-Smtp-Source: AGHT+IHpsM22I+XbsRa2AQVigP0aFeEOrTL+GwdNlPuSMf2S91xq+3A6gFHO3jgYBg2+RbyfLoc5HA==
X-Received: by 2002:a17:907:fd18:b0:add:fa4e:8a7e with SMTP id a640c23a62f3a-adfad4104cemr513285866b.32.1750003206157;
        Sun, 15 Jun 2025 09:00:06 -0700 (PDT)
Received: from smtpclient.apple ([89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec81b8a3fsm501587166b.38.2025.06.15.09.00.05
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Jun 2025 09:00:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM
 Sige5
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CABjd4Yw3FyVS0MBk2WdWKb24vkqrb09Tx3tj6B-xsmG1-Csk7w@mail.gmail.com>
Date: Sun, 15 Jun 2025 17:59:54 +0200
Message-Id: <80ACAAAE-F522-4199-9048-ADE69F6E1128@gmail.com>
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <20250603-sige5-updates-v1-1-717e8ce4ab77@gmail.com>
 <6656934.DvuYhMxLoT@workhorse>
 <CABjd4Yx05SCm+03jWbsEP-A5AuhL14wLj=+VdKyQgqMbnxi3xQ@mail.gmail.com>
 <512E950E-E8CB-443B-8E47-79F073D217E8@gmail.com>
 <CABjd4YxGQP=rH15EX12w36b7+82Dedf+rVH3v5V6gBwNv3V3iw@mail.gmail.com>
 <90218D7B-0CF5-4F5D-969A-909A44E6044F@gmail.com>
 <CABjd4Yw3FyVS0MBk2WdWKb24vkqrb09Tx3tj6B-xsmG1-Csk7w@mail.gmail.com>
To: Alexey Charkov <alchark@gmail.com>
X-Mailer: Apple Mail (2.3826.600.51.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250615_090008_407361_EA49CD82 
X-CRM114-Status: GOOD (  18.18  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdt
YWlsLmNvbT4gdyBkbml1IDkgY3plIDIwMjUsIG8gZ29kei4gMTY6MDU6Cj4gCj4gT24gU3VuLCBK
dW4gOCwgMjAyNSBhdCAxMToyNOKAr0FNIFBpb3RyIE9uaXN6Y3p1awo+IDxwaW90ci5vbmlzemN6
dWtAZ21haWwuY29tPiB3cm90ZToKPj4+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFsZXhl
eSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4gdyBkbml1IDUgY3plIDIwMjUsIG8gZ29kei4g
MTU6NDI6Cj4+Pj4gQWxleGV5LAo+Pj4+IEkgc2VlIHlvdSBhcmUgdXNpbmcgcmszNTc2IGJvYXJk
IGxpa2UgbWUgKG5hbm9waS1tNSkKPj4+PiBIYXZlIHlvdSBvbiB5b3VyIGJvYXJkIGNvcnJlY3Rs
eSB3b3JraW5nIGNwdSBkdmZzPwo+Pj4+IEkgbWVhbjogWzFdW2Rlc2lyZWQgY2xvY2tzIHJlcG9y
dGVkIGJ5IGtlcm5lbCBzeXNmcyBhcmUgaW4gcGFpciB3aXRoIFsyW11jdXIgY2xvY2tzPwo+Pj4+
IEluIG15IGNhc2UgaSBzZWUgbWluZSBjcHUgbGl2ZXMgdG90YWxseSBvbiBpdOKAmXMgb3duIHdp
dGggZHZmczoKPj4+IAo+Pj4gSGkgUGlvdHIsCj4+PiAKPj4+IEkgaGF2ZW4ndCB0cmllZCB0byB2
YWxpZGF0ZSBhY3R1YWwgcnVubmluZyBmcmVxdWVuY2llcyB2cy4gcmVxdWVzdGVkCj4+PiBmcmVx
dWVuY2llcywgYnV0IHN1YmplY3RpdmUgcGVyZm9ybWFuY2UgYW5kIHBvd2VyIGNvbnN1bXB0aW9u
IHNlZW0gdG8KPj4+IGJlIGluIGxpbmUgd2l0aCB3aGF0IEkgZXhwZWN0Lgo+PiAKPj4gd2VsbCAt
IG15IHN1YmplY3RpdmUgbCZmIGlzIHRoYXQgIC0gY3VycmVudGx5IC0gbXkgcmszNTc2IHNlZW1z
IOKAnnNsb3dlciIgdGhhbiBpLmUuIDR4QTUzIGg2MTguCj4gCj4gSW4gbXkgZXhwZXJpZW5jZSwg
bmF0aXZlIGNvbXBpbGF0aW9uIG9mIEdDQyAxNCB1c2luZyA4IHRocmVhZHMgb24KPiBSSzM1NzYg
KG1haW5saW5lIHdpdGggcGFzc2l2ZSBjb29saW5nIGFuZCB0aHJvdHRsaW5nIGVuYWJsZWQpOiAy
IGhvdXJzCj4gNiBtaW51dGVzLCBvbiBSSzM1ODggKG1haW5saW5lIHdpdGggcGFzc2l2ZSBjb29s
aW5nIHZpYSBSYWR4YSBSb2NrIDVCCj4gY2FzZSBhbmQgdGhyb3R0bGluZyBlbmFibGVkIGJ1dCBu
ZXZlciBraWNraW5nIGluKTogMSBob3VyIDEwIG1pbnV0ZXMKCmJ5IGN1cmlvc2l0eSBpIGxvb2tl
ZCByYW5kb21seSBvbiAzNTc2IHZzIDM1ODg6Cm11bHRpdGhyZWFkIHBhc3NtYXJrOiAzNjc1ICho
dHRwczovL3d3dy5jcHViZW5jaG1hcmsubmV0L2NwdS5waHA/Y3B1PVJvY2tjaGlwK1JLMzU3NiZp
ZD02MjEzKQptdWx0aXRocmVhZCBwYXNzbWFyazogNDUzMCAoaHR0cHM6Ly93d3cuY3B1YmVuY2ht
YXJrLm5ldC9jcHUucGhwP2NwdT1Sb2NrY2hpcCtSSzM1ODgmaWQ9NDkwNikKCmFzc3VtaW5nIDM1
ODggYXMgYmFzZWxpbmUsIDM1NzYgaXMgYXBwcm94IDIwJSBzbG93ZXIgb24gbXVsdGl0aHJlYWQg
cGFzc21hcmsgKGhhcyB+MCw4IGNvbXAgcG93ZXIgb2YgMzU4OCkKNzAgbWluIGNvbXBpbGUgb24g
MzU4OCBzaG91bGQgdGFrZSBzb21ldGhpbmcgbGlrZSB+ODZtaW4gb24gMzU3Ni4KSW4geW91ciBj
YXNlIDEyNm1pbiBjb21waWxlIG9uIDM1NzYgc2hvd3MgMzU3NiBvZmZlcnMgMCw1NSBjb21wIHBv
d2VyIG9mIDM1ODguClJvdWdobHkgMzU3NiBzaG91bGQgZG8gdGhpcyB0YXNrIGluIDQwbWluIGxl
c3MgdGhhbiB5b3UgY3VycmVudGx5IHNlZSBpIHRoaW5rCiAKCj4gQ2FuJ3Qgc2VlIGhvdyB1LWJv
b3Qgd291bGQgYWZmZWN0IENQVSBzcGVlZCBpbiBMaW51eCwgYXMgbG9uZyBhcyB5b3UKPiB1c2Ug
Y29tcGFyYWJsZSBBVEYgaW1hZ2VzLiBEbyB5b3UgdXNlIHRoZSBzYW1lIGtlcm5lbCBhbmQgZHRi
IGluIGFsbAo+IHRoZXNlIGNhc2VzPyBBbHNvLCB3aGF0J3MgeW91ciB0aGVybWFsIHNldHVwPwoK
eWVzLiBpbiBhbGwgY2FzZXMgb25seSBjaGFuZ2Ugd2FzOiB1Ym9vdCAmIGF0Zgp0aGVybWFsIGlz
IGJhc2VkIG9uIHJlY2VudCBjb2xsYWJvcmEgc2VyaWVzICgrIHJlY2VudCBwb29saW5nIGZpeCBm
b3IgY2xvY2tzIHJldHVybiBmcm9tIHRocm90dGxpbmcpIAoKPiAKPiAKPiBOb3Qgc3VyZSBVWCBp
cyBhIHBhcnRpY3VsYXJseSBnb29kIG1lYXN1cmUgb2YgQ1BVIHBlcmZvcm1hbmNlLCBhcyBsb25n
Cj4gYXMgeW91J3ZlIGdvdCBhIHByb3Blcmx5IGFjY2VsZXJhdGVkIERSTSBncmFwaGljcyBwaXBl
bGluZS4gTW9yZQo+IGxpa2VseSAyRC8zRCBhbmQgbWVtb3J5LgoKaW5kZWVkLgpGb3IgcXVhbnRp
ZmllZCBsb29rIGnigJltIGxvb2tpbmcgb24gdi5zaW1wbGUgYXBwcm9hY2ggdG8gZXN0aW1hdGUg
cmVhbCBjbG9jayBpcyBodHRwOi8vdW9iLWhwYy5naXRodWIuaW8vMjAxNy8xMS8yMi9hcm0tY2xv
Y2stZnJlcS5odG1sCmJ5IGN1cmlvc2l0eSBpIGxvb2tlZCB3aGF0IGl0IHJlcG9ydHMgb24gYTUz
L2E1NS9hNzIvYTc2IGFuZCBpdCBpcyBzdXJwcmlzaW5nbHkgYWNjdXJhdGUgOi0pCm9uIG1pbmUg
MzU3NiB3aXRoIGNvbGxhYm9yYSB1Ym9vdCttYWlubGluZSBhdGYgaXMgaG93cyA4MDBNSHogKGFu
ZCBpbiBwZXJmLiBnb3YgaXQgc2VlbXMgdG8gYmUgY29uc3RhbnQpCgo+IAo+IFRoZXJlIG1pZ2h0
IGJlIHNvbWUgZGlmZmVyZW5jZSBpbiBob3cgUFZUUExMIGJlaGF2ZXMgb24gUkszNTc2IHZzLgo+
IFJLMzU4OC4gQnV0IGZyYW5rbHkgZmlyc3QgSSB3b3VsZCBjaGVjayBpZiB5b3UgYXJlIHVzaW5n
IGNvbXBhcmFibGUKPiBBVEYgaW1wbGVtZW50YXRpb25zIChlLmcuIHVwc3RyZWFtIFRGLUEgaW4g
Ym90aCBjYXNlcyksIGtlcm5lbHMgYW5kCj4gdGhlcm1hbCBlbnZpcm9ubWVudCA6KQogCmFsbCB0
ZXN0czogdGhlIHNhbWUgNi4xNS4yIG1haW5saW5lICsgc29tZSBjb2xsYWJvcmEgcGF0Y2hlcwoK
ZGlmZnMgd2VyZTogCjEuY29sbGFib3JhIHVib290WzFdICsgbWFpbmxpbmUgYXRmIDIuMTMKMi5j
b2xsYWJvcmEgdWJvb3RbMV0gKyByb2NrY2hpcCBya2JpbiBibDMxIGJsb2IKMy52ZW5kb3IgdWJv
b3QgKGJpbiBkdW1wIGZyb20gZnJpZW5kbHllbGVjIHVidW50dSBpbWFnZSkgICAKCm9uIDEvMiBp
IHNlZSBraW5kIG9mIGlzc3VlIHdpdGggY2xvY2sgdmFsdWVzIChpLmUuIHBlcmYgZ292IGdpdmVz
IGNvbnN0YW50IDgwME1IeiBvbiBtYWlubGluZSBhdGYpLgozIHNlZW1zIHRvIHBlcmZvcm0gYmV0
dGVyIC0gKGkuZS4gcGVyZiBnb3YgZ2l2ZXMgY29uc3RhbnQgMTUwME1IeiBzbyBhbGwgaXMgc25h
cHBpZXIvZmFzdGVyKSAKCmFzIHB2dHBsbCBpcyB0cnlpbmcgdG8gcmVhY2ggdGFyZ2V0IGZyZXEg
YW5kIGVuZHMgd2l0aCBzdGFibGUgb3Blci4gZnJlcSBmb3IgZ2l2ZW4gY3B1X3ZkZC90ZW1wL2Zh
Yi5jdXQgLSBwb3NzaWJsZSB0aGVvcnkgaXM6IGlmIGNwdV92ZGQgaXMgd3JvbmdseSBkcml2ZW4s
IHB2dHBsbCBwcm9ncmFtbWVkIGZyZXEgd2lsbCB3YXkgZGlmZiBmcm9tIHJlcS4gKGkuZS4gd2F5
IHRvbyBsb3cpLgptb25pdG9yaW5nIHZkZF9iaWcvdmRkX2xpdCBzaG93cyBjb25zdGFudCA5NTBt
diBmb3IgcGVyZi5nb3YgKHJlYWQgZnJvbSBzeXNmczsgbm90IHZlcmlmaWVkIHdpdGggbXVsdGlt
ZXRlciBhcyBpIGRvbuKAmXQgaGF2ZSBwY2IgcGRmIHdpdGggY29tcG9uZW50cyBsYXlvdXQgc28g
Y2Fu4oCZdCBpZGVudGlmeSBpLmUuIHZkZF9iaWcgZmlsdGVyaW5nIGNhcHMgYzEwMDcvYzEwMDgg
dG8gbWVhc3VyZSkKCiguZHhmIGZpbGUgcHJvdmlkZWQgYnkgZnJpZW5kbHllbGVjIFsxXSBzZWVt
cyB0byBiZSBsYWNraW5nIGNvbXAuIG51bWJlcmluZykgIAoKWzFdOiBodHRwczovL3dpa2kuZnJp
ZW5kbHllbGVjLmNvbS93aWtpL2ltYWdlcy9lL2UxL05hbm9QaV9NNV8yNDExX0RYRi56aXAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
