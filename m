Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86E6CC02189
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 19:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaCedimIIoP2crIGTSbBs3mQhVmZdV4mPW9zfm+k+8E=; b=OuaM2WgJhYmlhZ
	OZXARNJqGBAgkTLIJaB5mUvquLQZnKE3gYO6688TXPc5pklb2KV6vG63AxXCjz4lYAkmk/ib0v56D
	NxBW+WtrWsEGeoSQhfljQmqifb9M1mkb+AX5XUj8P/n0y2LAN/PTtR0LFZIExJzmTJOXqboTHlZ+K
	FTICOXp5yBtOBHabq4/Yg1iNmVRzYfdJd3WQYhePTEmHIgtond+9yqgMnOHRkdv8aYZs2ou37+7ho
	dyLMKVhe1z6XJY/hSwOwrZnc4/OmRJ5Icj66RboNa6QXTJcm+2L4GXA2leyCv/FfYyAvGEpS6RBdf
	2VfylBtDrlzMnnlvh/sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY8rK-0000000Cs7T-1WmJ;
	Wed, 15 Jan 2025 19:15:22 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY8pV-0000000CrkK-3OSV
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jan 2025 19:13:31 +0000
Received: by mail-qv1-xf35.google.com with SMTP id 6a1803df08f44-6dd0d09215aso1739526d6.2
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jan 2025 11:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1736968408; x=1737573208; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zLPSjMEctNCr0CfmUH65A3G8flj6/XxbgTXl0MggbIs=;
        b=DurtkCyvqP4VpfW3e5g3y/dXp6jRwPnNGZe2LAhGiBqSMBvrHejn/r3v6YkhCcwFlf
         vY5wmkMxebkLcFOyLDD3yFN+khqGzCnmIx8WAE4E41Ir/3+VXzOj77zpYAskOVL8B1fo
         nLnujlTB7j8xw0ybijIgQZ6/QD2r0WAgENnwnKcHSmCKM+T5GdGc2I11VeTm0VYUOzBn
         IyOUPzeBhMLohO2r+1ivL+/EXx7pcUCHXkXQTtxWg7sPHp9UePD+1pODaHn19fu0btj5
         ELL0dxi+lmeHo9n9Vb3G6nJxTvp87Nk2QMUPoy+zyWQglWgCK60NQJGn786kti5IYh6v
         ok3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736968408; x=1737573208;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zLPSjMEctNCr0CfmUH65A3G8flj6/XxbgTXl0MggbIs=;
        b=kPNbyazqPZwVVr7Gxa9xvLMCQ7WFfHJOcryW/sirDLIcGssapBXJ3jqt60s4wtO7Uy
         xDbenecaE/JOTafsvP0rRiVVwwJGnxpdvzXAWr6ZVhVbMeFDJerxS+2iwTvprFDQjheB
         IrpjBFxcWrbQfgl7d4uK0KGIgMdiSnmGBa42TgkN5lpV9Ik6clF1zqnmJxw3SHi2q8jw
         88JSGyzjCSVOpGZt1jrvXy3pxAgDqjqUoxwbcUqtaDv+5LV3IVD4YVrErlA1jN8L2vtT
         D3+dgjIR7k6wdOKpZdY1t1QwDpTwNQDU+Bfhuk9VCv6meBU8GNiVpYE96KfnHi7RcORB
         ifYg==
X-Forwarded-Encrypted: i=1; AJvYcCWLMvFXQg4z1rN1Hdvqg9PfaUY0AbFk/Z4yQvq1uMq/j/OmqgL0FKmr20KJ581qVrSEsynuP5xF2ezunjU+TA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8A6VQR4RLubgDzRWJoFTbLoEqP53bufUo0rUO3G1iNvdSZw66
	K66HYfkuaJhDWVK2x0b9n4mZwwPkKrULlB8tWgoBbqpHbJG46pjMTdmTfUMFipY=
X-Gm-Gg: ASbGnctrqE2AMgwIt6oW2oOREhaWa6izwvkU8yJlzsBR1R9lD82Q+ZKEDaLy9y1N+oj
	jNw+3PJ5IroRJPqDsoI9e/66qwC9ZYGBuOzc3yrlTvsPUVEs0PE1jIoDdm9hP3V1RvabJfQhkyA
	n494Oga5VzIjadT+OvlZK7B4Ozs5xAW4brw/IoZqkydMC+mH0tHt5KcMueibH9MlzJ4R2mR8Ywq
	V3R7gvxZs9M1i7NXc8eWGPcg8yLa5kGjoIiSNtS/3pBwDo+RhJ6cS32Eg==
X-Google-Smtp-Source: AGHT+IFnsoiKe7uegsgPWYDB1RCuZQrLk0csHxrvV++7dz72d6AHNX8tJjks7RFtVLA5aLi/FpTAFQ==
X-Received: by 2002:a05:6214:5192:b0:6d8:8f14:2f5b with SMTP id 6a1803df08f44-6df9b240540mr547388736d6.19.1736968408422;
        Wed, 15 Jan 2025 11:13:28 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:15:862e::7a9])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6dfade900c6sm67775316d6.111.2025.01.15.11.13.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 11:13:28 -0800 (PST)
Message-ID: <4eaae50515b46545de4ff399bc2365a3c4f9c44f.camel@ndufresne.ca>
Subject: Re: [PATCH] media: rkisp1: allow non-coherent video capture buffers
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Mikhail Rudenko <mike.rudenko@gmail.com>, Laurent Pinchart
	 <laurent.pinchart@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Wed, 15 Jan 2025 14:13:27 -0500
In-Reply-To: <87bjw9s4s3.fsf@gmail.com>
References: <20250102-b4-rkisp-noncoherent-v1-1-bba164f7132c@gmail.com>
	 <20250103152326.GP554@pendragon.ideasonboard.com>
	 <87bjw9s4s3.fsf@gmail.com>
User-Agent: Evolution 3.54.2 (3.54.2-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_111330_058059_17778414 
X-CRM114-Status: GOOD (  22.24  )
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

TGUgbWFyZGkgMTQgamFudmllciAyMDI1IMOgIDE5OjAwICswMzAwLCBNaWtoYWlsIFJ1ZGVua28g
YSDDqWNyaXTCoDoKPiBIaSBMYXVyZW50LAo+IAo+IE9uIDIwMjUtMDEtMDMgYXQgMTc6MjMgKzAy
LCBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+IHdy
b3RlOgo+IAo+ID4gT24gVGh1LCBKYW4gMDIsIDIwMjUgYXQgMDY6MzU6MDBQTSArMDMwMCwgTWlr
aGFpbCBSdWRlbmtvIHdyb3RlOgo+ID4gPiBDdXJyZW50bHksIHRoZSBya2lzcDEgZHJpdmVyIGFs
d2F5cyB1c2VzIGNvaGVyZW50IERNQSBhbGxvY2F0aW9ucyBmb3IKPiA+ID4gdmlkZW8gY2FwdHVy
ZSBidWZmZXJzLiBIb3dldmVyLCBvbiBzb21lIHBsYXRmb3JtcywgdXNpbmcgbm9uLWNvaGVyZW50
Cj4gPiA+IGJ1ZmZlcnMgY2FuIGltcHJvdmUgcGVyZm9ybWFuY2UsIGVzcGVjaWFsbHkgd2hlbiBD
UFUgcHJvY2Vzc2luZyBvZgo+ID4gPiBNTUFQJ2VkIHZpZGVvIGJ1ZmZlcnMgaXMgcmVxdWlyZWQu
Cj4gPiA+IAo+ID4gPiBGb3IgZXhhbXBsZSwgb24gdGhlIFJvY2tjaGlwIFJLMzM5OSBydW5uaW5n
IGF0IG1heGltdW0gQ1BVIGZyZXF1ZW5jeSwKPiA+ID4gdGhlIHRpbWUgdG8gbWVtY3B5IGEgZnJh
bWUgZnJvbSBhIDEyODB4NzIwIFhSR0IzMiBNTUFQJ2VkIGJ1ZmZlciB0byBhCj4gPiA+IG1hbGxv
YydlZCB1c2Vyc3BhY2UgYnVmZmVyIGRlY3JlYXNlcyBmcm9tIDcuNyBtcyB0byAxLjEgbXMgd2hl
biB1c2luZwo+ID4gPiBub24tY29oZXJlbnQgRE1BIGFsbG9jYXRpb24uIENQVSB1c2FnZSBhbHNv
IGRlY3JlYXNlcyBhY2NvcmRpbmdseS4KPiA+IAo+ID4gV2hhdCdzIHRoZSB0aW1lIHRha2VuIGJ5
IHRoZSBjYWNoZSBtYW5hZ2VtZW50IG9wZXJhdGlvbnMgPwo+IAo+IFNvcnJ5IGZvciB0aGUgbGF0
ZSByZXBseSwgeW91ciBxdWVzdGlvbiB0dXJuZWQgb3V0IGEgbGl0dGxlIG1vcmUKPiBpbnRlcmVz
dGluZyB0aGFuIEkgZXhwZWN0ZWQgaW5pdGlhbGx5LiA6KQo+IAo+IFdoZW4gY2FwdHVyaW5nIHVz
aW5nIFlhdnRhIHdpdGggTU1BUCBidWZmZXJzIHVuZGVyIHRoZSBjb25kaXRpb25zIG1lbnRpb25l
ZAo+IGluIHRoZSBjb21taXQgbWVzc2FnZSwgZnRyYWNlIGdpdmVzIDQzNy42ICstIDEuMSB1cyBm
b3IKPiBkbWFfc3luY19zZ3RhYmxlX2Zvcl9jcHUgYW5kIDQwOSArLSAxNCB1cyBmb3IKPiBkbWFf
c3luY19zZ3RhYmxlX2Zvcl9kZXZpY2UuIFRodXMsIGl0IGxvb2tzIGxpa2UgdXNpbmcgbm9uLWNv
aGVyZW50Cj4gYnVmZmVycyBpbiB0aGlzIGNhc2UgaXMgbW9yZSBDUFUtZWZmaWNpZW50IGV2ZW4g
d2hlbiBjb25zaWRlcmluZyBjYWNoZQo+IG1hbmFnZW1lbnQgb3ZlcmhlYWQuCj4gCj4gV2hlbiB0
cnlpbmcgdG8gZG8gdGhlIHNhbWUgbWVhc3VyZW1lbnRzIHdpdGggbGliY2FtZXJhLCBJIGZhaWxl
ZC4gSW4gYQo+IHR5cGljYWwgbGliY2FtZXJhIHVzZSBjYXNlIHdoZW4gTU1BUCBidWZmZXJzIGFy
ZSBhbGxvY2F0ZWQgZnJvbSBhCj4gZGV2aWNlLCBleHBvcnRlZCBhcyBkbWFidWZzIGFuZCB0aGVu
IHVzZWQgZm9yIGNhcHR1cmUgb24gdGhlIHNhbWUgZGV2aWNlCj4gd2l0aCBETUFCVUYgbWVtb3J5
IHR5cGUsIGNhY2hlIG1hbmFnZW1lbnQgaW4ga2VybmVsIGlzIHNraXBwZWQgWzFdCj4gWzJdLiBB
bHNvLCB2YjJfZGNfZG1hYnVmX29wc197YmVnaW4sZW5kfV9jcHVfYWNjZXNzIGFyZSBuby1vcHMg
WzNdLCBzbwo+IERNQV9CVUZfSU9DVExfU1lOQyBmcm9tIHVzZXJzcGFjZSBkb2VzIG5vdCB3b3Jr
IGVpdGhlci4KPiAKPiBTbyBpdCBsb29rcyBsaWtlIHRvIG1ha2UgdGhpcyBjaGFuZ2UgcmVhbGx5
IHVzZWZ1bCwgdGhlIGFib3ZlIGlzc3VlIG9mCj4gY2FjaGUgbWFuYWdlbWVudCBmb3IgbGliY2Ft
ZXJhL0RNQUJVRi92aWRlb2J1ZjItZG1hLWNvbnRpZyBoYXMgdG8gYmUKPiBzb2x2ZWQuIEknbSBu
b3QgYW4gZXhwZXJ0IGluIHRoaXMgYXJlYSwgc28gYW55IGFkdmljZSBpcyBraW5kbHkgd2VsY29t
ZS4gOikKCgpUaGUgbWFudWFsIGNvaGVyZW5jeSBoaW50cyBhcmUgbm90IGltcGxlbWVudGVkIGZv
ciBETUFCdWYsIGFuZCBsaWJjYW1lcmEgb25seSBkbwpkbWFidWYuIFNvbWVvbmUgd2lsbCBoYXZl
IHRvIGxvb2sgaW50byB0aGF0LiBUaGlzIGlzIGFsc28gd2h5IHRoaXMgQVBJIGhhdmUgdmVyeQps
b3cgYWRvcHRpb24sIGl0cyBicmVha3MgZWFzaWx5LgoKPiAKPiBbMV0gaHR0cHM6Ly9naXQubGlu
dXh0di5vcmcvbWVkaWEuZ2l0L3RyZWUvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3Zp
ZGVvYnVmMi1jb3JlLmM/aWQ9OTQ3OTRiNWNlNGQ5MGFiMTM0YjBiMTAxYTAyZmRkZjZlNzRjNDM3
ZCNuNDExCj4gWzJdIGh0dHBzOi8vZ2l0LmxpbnV4dHYub3JnL21lZGlhLmdpdC90cmVlL2RyaXZl
cnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jP2lkPTk0Nzk0YjVjZTRk
OTBhYjEzNGIwYjEwMWEwMmZkZGY2ZTc0YzQzN2QjbjgyOQo+IFszXSBodHRwczovL2dpdC5saW51
eHR2Lm9yZy9tZWRpYS5naXQvdHJlZS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlk
ZW9idWYyLWRtYS1jb250aWcuYz9pZD05NDc5NGI1Y2U0ZDkwYWIxMzRiMGIxMDFhMDJmZGRmNmU3
NGM0MzdkI240MjYKPiAKPiAtLQo+IEJlc3QgcmVnYXJkcywKPiBNaWtoYWlsIFJ1ZGVua28KPiAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
