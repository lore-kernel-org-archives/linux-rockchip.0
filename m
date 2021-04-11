Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3ED9C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 03:40:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3F8556109F
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 03:40:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3F8556109F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SAwBbb+79IXzD3l3I5ivfGmJX8hQraS/AI6LYhHskkw=; b=fk28hXPzJWuRq3Z+vkUkUim9Q
	gyVdp8uuiArb6ew2NWv12IRcc0su08xIHBDTRHE0a/H7qS+eT26CF6cWlKaFfec2T0ehjhyliu5jU
	/nUL6r2S16k2pOTSdWAn7NlIwUYJ2TVX7JvZ26wqeh7xLNOXlTvnJpCqQhahZsWRueHdPDpSaxuw4
	NOYZXXzC/GOUPu7ew6drTXCPw99vA+BvmYs5fyQj0p+5EYZvVD0U/iId8rWrIs1zRoptDLMBcvqnc
	D8azMie1j+AtRMZ74X+7uvQwSwv7jCLBY/kPgUMsueetX+n/IRLCyPt7YJBC+xOCBW3tuqCvqw3tX
	8aKVb5MkA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVQxT-003t0r-RK; Sun, 11 Apr 2021 03:40:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVQxS-003t0m-Pp
 for linux-rockchip@desiato.infradead.org; Sun, 11 Apr 2021 03:40:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-ID:Content-Description;
 bh=2dePqcnlEiNDQmL8sXnzKX1E1E1GgEgEern/rq9+tGY=; b=tTyvSeCrBjtKhSRks8WpdkKUqv
 H8sVuN4wW1jNWCZ1cp60JFFiiMNZ7wGclZrWQtMrnMPo3vKWHG9poShrTHgxSfbtT9tHB/u80Yy2y
 3nARTg4c+HSRBdBrC6t1a348zjTiEs6wFic7HKhgycoLyN5dsMy1ivrDRe3pcPy2J/iAxLOHI01vL
 svRQSivlju+b21xr1xtiEcx5abtuD1Ln90GDC9PxPirZoCXh954yl9Z3bGbUp3ixDmzEDmdOBSUia
 qBQrxfZxSVqJaF6ke+kCNTPaYHxAUZ04IhcqzgSN9GNGQNQd9Ach5ERUtgpHT3JJNfw16z8cIGMeG
 8W9oYHiw==;
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVQxP-005Lww-7s
 for linux-rockchip@lists.infradead.org; Sun, 11 Apr 2021 03:40:21 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 30so4681426qva.9
 for <linux-rockchip@lists.infradead.org>; Sat, 10 Apr 2021 20:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2dePqcnlEiNDQmL8sXnzKX1E1E1GgEgEern/rq9+tGY=;
 b=Y4kuhq+kSJWskls3bjRMVx1gqJpAiOf0/kTRFUQxaDiOwucouzS7QtSn6XfUyWmZv/
 +mTe7RsdRpKb8OEvr5LFJaWGfaU0XPG1cqxvnQDh6vA2yU8TbzBPL1OTLUF1yJ/9AsKx
 /kAJah5KujiG7Ov08I+YdGsQDUaEo5u3co4c6IOuUOJXTx+tCvMrs01/IOjT9rPji+R6
 f0M43la3sdjaLlfUWgSzwZtTW0/gk2TGcbvUEvg8r4+4OCMnfe2/NGIRtGUChiHRNZht
 UhnZ+9QicPyORfMek1vRJoPAgXwnK40Gox+RuhxSq0jsa82A+5pXbiB1ZYnmbKsaXqw8
 Wjfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2dePqcnlEiNDQmL8sXnzKX1E1E1GgEgEern/rq9+tGY=;
 b=mqNXKuQ42bDaHaCC7INvDT+ITDMtjSfjdNWPiSRPhpUmjp7pddGAISyMsd4qwTBXpz
 VoLawVh716cW8661+HMxkQJjez2mQJxt0jT48I6mKw/OfFxVqFKzpzH5QCrptaCH/yBU
 ghb1n1WhpLKM8VNaop4QklGv1kxeXe7/ovutykit30xzeZO0LpUV7kX1E2xTuhPRo042
 H5P+Rcd9cwoA7FJWHWUIg4KD5wg7HtuUj9j6aj5jFc6P5qQ7R/8IhXrF5MZiRhiDmSLa
 ewFyFp8UpE4EZhU2wILV0JJPLY35Eeug3VQStnRBwTov8sh3racuOjoyc5lS2vi75Diz
 A8OA==
X-Gm-Message-State: AOAM5302z8aL1xmAGrKz2MbF1AW3JQ8SgiJsYMlFNyBj9KG8xbWvR2VI
 imIHQl52dtOGEaB0cSqAeXFLc7799ltscKThtic=
X-Google-Smtp-Source: ABdhPJwtoUaqdQVkHgbsuCd2nem9Ie/1WtVSGNpGoyp4bIK6VXfdB8DAJXIo82ErKMr/I10B9HmUHdoYG210dUsLJ/I=
X-Received: by 2002:a05:6214:7e6:: with SMTP id
 bp6mr2398018qvb.37.1618112417095; 
 Sat, 10 Apr 2021 20:40:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210304013342.1106361-1-jay.xu@rock-chips.com>
 <CACRpkdYYpgFWH9pVOT=o7unWXRqVeHtvsJgbByNGZ170CZ_FXA@mail.gmail.com>
 <CAMdYzYqk3k0UqCyFwB+W1tKKKTg39Mx0Vdsrj+eeC58nARaumQ@mail.gmail.com>
 <3262311.AJdgDx1Vlc@diego>
 <CACRpkdZeZuHe9kFywrdQxcNMfAcBCJVAhJjfyD6ahLinT0hvmg@mail.gmail.com>
In-Reply-To: <CACRpkdZeZuHe9kFywrdQxcNMfAcBCJVAhJjfyD6ahLinT0hvmg@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 10 Apr 2021 23:40:05 -0400
Message-ID: <CAMdYzYp80DdEp8LM7YkEUqmu-7WwhyTvFU4QAfGu9uimsE6rYg@mail.gmail.com>
Subject: Re: [PATCH v4] pinctrl: rockchip: add support for rk3568
To: Linus Walleij <linus.walleij@linaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Jianqun Xu <jay.xu@rock-chips.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_204019_318581_33127E6B 
X-CRM114-Status: GOOD (  24.70  )
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

T24gU2F0LCBBcHIgMTAsIDIwMjEgYXQgODo0MCBQTSBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxs
ZWlqQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gU2F0LCBBcHIgMTAsIDIwMjEgYXQgMTE6MTAg
UE0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gPiBBbSBTYW1zdGFn
LCAxMC4gQXByaWwgMjAyMSwgMjA6MzA6NTIgQ0VTVCBzY2hyaWViIFBldGVyIEdlaXM6Cj4gPiA+
IEdvb2QgQWZ0ZXJub29uLAo+ID4gPgo+ID4gPiBJJ20gY3VycmVudGx5IHdvcmtpbmcgb24gdGhl
IHJrMzU2NiBlYXJseSBicmluZ3VwIHN1cHBvcnQgaW4gbWFpbmxpbmUKPiA+ID4gYW5kIGVuY291
bnRlcmVkIGFuIGlzc3VlIHdpdGggdGhpcyBwYXRjaCBzZXQuCj4gPiA+IFVuZm9ydHVuYXRlbHkg
aW4gdGhlIHJrMzU2OC9yazM1NjYgdGhlIGdwaW8gcmVnaXN0ZXJzIHN3aXRjaGVkIHRvIHRoZQo+
ID4gPiAoMTYgYml0cyB3cml0ZSBlbmFibGUgLyAxNiBiaXRzIGNvbmZpZykgcmVnaXN0ZXIgZm9y
bWF0IHRoYXQgb3RoZXIKPiA+ID4gcm9ja2NoaXAgcmVnaXN0ZXJzIHVzZS4KPiA+ID4gVGhpcyBk
aWZmZXJzIGZyb20gcHJldmlvdXMgY2hpcHMgd2hlcmUgYWxsIDMyIGJpdHMgd2VyZSB1c2VkIGZv
ciBncGlvCj4gPiA+IGNvbmZpZ3VyYXRpb24uCj4gPiA+IFRoZSBwYXRjaCBmYWlscyB0byBhY2Nv
dW50IGZvciB0aGlzLCB3aGljaCBjYXVzZXMgYWxsIGdwaW9zIHRvIGZhaWwgdG8gZnVuY3Rpb24u
Cj4gPiA+Cj4gPiA+IEZvciBjbGFyaXR5LCB0aGlzIG9ubHkgYWZmZWN0cyBHUElPX1NXUE9SVF9E
UiBhbmQgR1BJT19TV1BPUlRfRERSLgo+ID4gPgo+ID4gPiBJJ20gY3VycmVudGx5IHdvcmtpbmcg
b24gYSBwYXRjaCB0byBmaXggdGhpcyBpc3N1ZSwgYnV0IEkga25vdyB0aGF0Cj4gPiA+IHlvdSBh
cmUgcGxhbm5pbmcgb24gYnJlYWtpbmcgb3V0IHRoZSBncGlvIGZ1bmN0aW9ucyBpbnRvIGEgc2Vw
YXJhdGUKPiA+ID4gZHJpdmVyIGFuZCB3YW50ZWQgdG8gbWFrZSB5b3UgYXdhcmUgb2YgdGhpcyBp
bW1lZGlhdGVseS4KPiA+Cj4gPiBqdXN0IHBvaW50aW5nIHRvIEppYW5xdW4ncyBzZXJpZXMgcHJv
dmlkaW5nIHRoZSBncGlvIGNvbnRyb2xsZXIgc3VwcG9ydDoKPiA+Cj4gPiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9yLzIwMjEwMzI0MDY0NzA0Ljk1MDEwNC0xLWpheS54dUByb2NrLWNoaXBzLmNv
bQo+ID4KPiA+IHdoaWNoIGludHJvZHVjZXMgdGhlIG5lY2Vzc2FyeSB3cml0ZW1hc2staGFuZGxp
bmcgYnV0IHNlZW1zIHRvIG5lZWQgYW4KPiA+IHVwZGF0ZSwganVkZ2luZyBieSBFemVxdWllbCdz
IHJlcGx5IHRvIGl0Lgo+Cj4gRG9lcyB0aGlzIG1lYW4gdGhhdCBpZiB3ZSBnZXQgYSBzcGVlZHkg
YW5kIG5pY2UgbG9va2luZyByZXNwaW4gb2YgdGhlCj4gR1BJTyBzZXJpZXMgd2UgcHJvYmFibHkg
Z290IHRoaXMgcHJvYmxlbSBjb3ZlcmVkPwo+Cj4gVGhlIG1lcmdlIHdpbmRvdyBpcyBnZXR0aW5n
IGNsb3NlIGJ1dCBpdCB3b3VsZCBiZSBuaWNlIHRvIGdldCB0aGlzIGluLgoKVGhhbmsgeW91IGZv
ciB0aGUgcmVzcG9uc2VzIQpXaXRoIGEgYml0IG9mIGVmZm9ydCBhbmQgYSBxdWljayBidWlsZCBm
aXgsIEkndmUgc3VjY2Vzc2Z1bGx5IHJlYmFzZWQKdGhlIGdwaW8gcGF0Y2ggc2V0IHRvIHRoZSBs
YXRlc3QgbGludXgtbmV4dC4KSSBub3cgaGF2ZSBmdW5jdGlvbmFsIGdwaW8gY29udHJvbCBvbiB0
aGUgcmszNTY2LgpJIGhhdmVuJ3QgdGVzdGVkIHRoZW0gb24gb2xkZXIgZGV2aWNlcyB5ZXQgdGhv
dWdoLgoKV2l0aCB5b3VyIGJsZXNzaW5nIEkgY2FuIHNlbmQgaW4gdGhlIHJlYmFzZWQgcGF0Y2hl
cyBpbiB0aGUgbW9ybmluZywKdW5sZXNzIEppYW5xdW4gd2FudHMgdG8gaGFuZGxlIGl0LgoKPgo+
IFlvdXJzLAo+IExpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
