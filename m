Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F8EFC04FFE
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Apr 2024 12:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKLDI3CCyBVlLhIL5Um+LQD4xMgRFDC0747L3he3dO8=; b=pGk4ZDzbGRZS2v
	eKs6KhPoQxID92ynQiozSBuqo1q32JvB+dGIAJvtfECgUttOCnZ4b3vhCPjkBddRlMvbrhZ+ECvBd
	JK1loiL6p9HCU9quEvOnQem/Jl8Mu2uJOweC1Mdo1uWUFM4N5tsOwUGFZisT5uApKJgR/ouPQh+0S
	MHCI0vsZKxn7UcabUPCvvzr4s3hoUWaDUx0b3YLJf38UQA253B4hGNy6m9fhdai/YPzyfoQOixyOo
	XaByo42NjaOBbfevLxMcCeQ5rTHWbpL7nx9/8hIbHB8LmUX+6XY2pK8H4ifBCZdgDwBD2LGpk339R
	79AksGQWRkeQyUf7ECAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0L1j-0000000CW3d-0gUB;
	Fri, 26 Apr 2024 12:50:07 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0L1b-0000000CW0M-24S2
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Apr 2024 12:50:02 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-43a2a998c1dso4053371cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Apr 2024 05:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1714135795; x=1714740595; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/jIk24UTvp2YUpiHzdbLKk/FlYgOG8sPlEgyK+NwXnc=;
        b=nYmLlYsuU06Be0ngP97M4/PueWOP1UIMQSlxuuNIcNSX7wjQAZNJd/eKWEt/QYfLvm
         3Wlb8mDuBZKqfHsnfBIgUp0jy17QKvp2hH9By77mt1FBH76azHqzx5eaqoCFI054k59r
         Zsvy9CZnxzIRxCh7fzIFyIREKqgSUV7mRy2n1ynwQtxakhEzEZOvh0qglYA1SJk0mTAI
         nf4OFwraJi0xfcRMwP1Yrs0htKocjhn9czrFE4/nnnF3va7yPIVOrTsKzfRvhUmD2LGT
         TzezbPUR9kh7/wYnzkpZCWUc9AKZdQ5TFq98TynCtdheFla0+OepoWPgdQLuwg+zjy+N
         G0sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714135795; x=1714740595;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/jIk24UTvp2YUpiHzdbLKk/FlYgOG8sPlEgyK+NwXnc=;
        b=WL3BUppJStuu1/8YX41EpfiC68rhBTTGVtD0xQCUxOUVUWWxhsJBtspGcsidqKhf7v
         SdXRM9M55fEXQjdhxi1jvrbzGxLU+1OfMRIbTEgpz1hqrOF4vHmGnI6B+SLbWwVmbmRb
         OrIZaQ/0LxD2Atn3cz+f5im6soHmZtX7rBxaji1GfVr9ebOdnn6KTqSfJAGduW3D6Pch
         VEtoI3oKUIzZHz2i2xQKVFUQgXruYbAg0PylmjluGbhncBYvCpCoK5iODSMV009HAgKk
         fYoVbzaCbEguv/z1O51K8v39WdZpAs+YAykMkt/s+0G7q9OurrDCn16hk0FG0E3tXqYY
         ro5A==
X-Forwarded-Encrypted: i=1; AJvYcCWOIo6eSiMXGFG04q9nuRo2rwGcwSoOWL1WcgtRssEmC5TgxzIDtGxm03idk7Lj8FMhsS+hgTIdLh2mYaXQUzVaCNbnBNhV0Ts+KGxTEIVQtfU+
X-Gm-Message-State: AOJu0Yx+tePSbvW5G0eOOk1L1xkZhQS7HgKj+iMcCOfIIOu/xQRD0k3j
	6fZtwkasH3qd9xuc60RViTRmxbRWsOL9xvMhGXouM7SjjnP7mXZkCGxn55IhkfU=
X-Google-Smtp-Source: AGHT+IF3o9M5pM6FFfsh7nJLZ72rsCnOVet38b7n9U0dFsxRLAADFOG1ZYyP9LGChYQIw3BAigPKMw==
X-Received: by 2002:a05:622a:5e87:b0:439:a519:7ceb with SMTP id er7-20020a05622a5e8700b00439a5197cebmr2681743qtb.25.1714135795330;
        Fri, 26 Apr 2024 05:49:55 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:17:6448::580])
        by smtp.gmail.com with ESMTPSA id c3-20020ac85183000000b00436e193f408sm7853597qtn.28.2024.04.26.05.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 05:49:55 -0700 (PDT)
Message-ID: <bb59b9582e100420ef5ab9fc9a089f91a3d49883.camel@ndufresne.ca>
Subject: Re: Re: [PATCH v6 2/2] arm64: dts: rockchip: Add Hantro G1 VPU
 support for RK3588
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jianfeng Liu <liujianfeng1994@gmail.com>, sigmaris@gmail.com
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, didi.debian@cknow.org, 
 ezequiel@vanguardiasur.com.ar, heiko@sntech.de, krzk+dt@kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 mchehab@kernel.org, p.zabel@pengutronix.de, robh@kernel.org, 
 sebastian.reichel@collabora.com, sfr@canb.auug.org.au,
 linkmauve@linkmauve.fr
Date: Fri, 26 Apr 2024 08:49:53 -0400
In-Reply-To: <20240420050913.182225-1-liujianfeng1994@gmail.com>
References: <B9F108CF-4BC5-41A0-A28A-1CA1F4D2CD3C@gmail.com>
	 <20240420050913.182225-1-liujianfeng1994@gmail.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=mQGiBEUQN0MRBACQYceNSezSdMjx7sx6gwKkMghrrODgl3B0eXBTgNp6c431IfOOEsdvkoOh1kwoYcQgbg4MXw6beOltysX4e8fFWsiRkc2nvvRW9ir9kHDm49MkBLqaDjTqOkYKNMiurFW+gozpr/lUW15QqT6v68RYe0zRdtwGZqeLzX2LVuukGwCg4AISzswrrYHNV7vQLcbaUhPgIl0D+gILYT9TJgAEK4YHW+bFRcY+cgUFoLQqQayECMlctKoLOE69nIYOc/hDr9uih1wxrQ/yL0NJvQCohSPyoyLF9b2EuIGhQVp05XP7FzlTxhYvGO/DtO08ec85+bTfVBMV6eeY4MS3ZU+1z7ObD7Pf29YjyTehN2Dan6w1g2rBk5MoA/9nDocSlk4pbFpsYSFmVHsDiAOFje3+iY4ftVDKunKYWMhwRVBjAREOByBagmRau0cLEcElpf4hX5f978GoxSGIsiKoDAlXX+ICDOWC1/EXhEEmBR1gL0QJgiVviNyLfGJlZWnPjw6xhhmtHYWTDxBOP5peztyc2PqeKsLsLWzAr7RDTmljb2xhcyBEdWZyZXNuZSAoQi4gU2MuIEluZm9ybWF0aXF1ZSkgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPohgBBMRAgAgBQJFlCyOAhsDBgsJCAcDAgQVAggDBBYCAwECHgECF4AACgkQcVMCLawGqBwhLQCgzYlrLBj6KIAZ4gmsfjXD6ZtddT8AoIeGDicVq5WvMHNWign6ApQcZUihtElOaWNvbGFzIER1ZnJlc25lIChCLiBTYy4gSW5mb3JtYXRpcXVlKSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY28udWs+iGIEExECACIFAkuzca8CGwMGCwkIBwMCBhUIAgkKCwQWA
 gMBAh4BAheAAAoJEHFTAi2sBqgcQX8An2By6LDEeMxi4B9hUbpvRnzaaeNqA J9Rox8rfqHZnSErw9bCHiBwvwJZ77QxTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPohiBBMRAgAiBQJNzZzPAhsDBgsJCAcDAgYVCAIJCgsEFgIDAQIeAQIXgAAKCRBxUwItrAaoHLlxAKCYAGf4JL7DYDLs/188CPMGuwLypwCfWKc9DorA9f5pyYlD5pQo6SgSoiC0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPohiBBMRAgAiBQJVwNwgAhsDBgsJCAcDAgYVCAIJCgsEFgIDAQIeAQIXgAAKCRBxUwItrAaoHCZ4AJ0QwU6/G4c7h9CkMBT9ZxGLX4KSnQCgq0P7CX7hv/M7HeyfMFZe8t3vAEW0RE5pY29sYXMgRHVmcmVzbmUgKEIuIFNjLiBJbmZvcm1hdGlxdWUpIDxuaWNvbGFzZEBibHVlc3RyZWFrdGVjaC5jb20+iGAEExECACAFAkZjGzoCGwMGCwkIBwMCBBUCCAMEFgIDAQIeAQIXgAAKCRBxUwItrAaoHBl7AJ0d2lrzshMmJaik/EaDEakzEwqgxQCg0JVZMZm9gRfEou1FvinuZxwf/mu0R05pY29sYXMgRHVmcmVzbmUgKEIgU2MuIEluZm9ybWF0aXF1ZSkgPG5pY29sYXMuZHVmcmVzbmVAdXNoZXJicm9va2UuY2E+iGAEExECACAFAkUQN0MCGwMGCwkIBwMCBBUCCAMEFgIDAQIeAQIXgAAKCRBxUwItrAaoHPTnAJ0WGgJJVspoctAvEcI00mtp5WAFGgCgr+E7ItOqZEHAs+xabBgknYZIFPW5Ag0ERRA3UhAIAJ0rxl2HsVg/nSOAUt7U/T/W+RKzVAlD9orCB0pRVvyWNxSr8MHcH
 mWCxykLuB34ouM4GuDVRKfGnqLzJRBfjs7Ax9K2FI3Odund9xpviLCt1jFC0K XL04RebrFT7xjDfocDaSLFvgxMVs/Jr2/ckKPId1oKvgYgt/o+MzUabKyFB8wIvq4GMtj3LoBKLCie2nCaSt7uVUt6q2t5bNWrd3lO6/mWn7YMc5Hsn33H9pS0+9szw6m3dG08eMKNueDlt72QxiYl2rhjzkT4ltKEkFgYBdyrtIj1UO6eX+YXb4E1rCMJrdjBSgqDPK1sWHC7gliy+izr+XTHuFwlfy8gBpsAAwUIAJJNus64gri4HAL632eqVpza83EphX1IuHzLi1LlMnQ9Tm7XKag46NhmJbOByMG33LwBsBdLjjHQSVkYZFWUifq+NWSFC/kqlb72vW8rBAv64+i3QdfxK9FWbweiRsPpvuHjJQuecbPDJpubLaxKbu2aqLCN5LuHXvdQr6KiXwabT+OJ9AJAqHG7q4IEzg4RNUVn9AS6L8bxqMSocjqpWNBCY2efCVd/c6k4Acv6jXu+wDAZEbWXK+71uaUHExhigBYBpiHGrobe32YlTVE/XEIzKKywhm/Hkn5YKWzumLte6xiD9JhKabmD7uqIvLt2twUpz4BdPzj0dvGlSmvFcaaISQQYEQIACQUCRRA3UgIbDAAKCRBxUwItrAaoHJLyAKDeS3AFowM3f1Y3OFU6XRCTKK2ZhwCfT/7P9WDjkkmiq5AfeOiwVlpuHtM=
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_054959_635517_FC0834CD 
X-CRM114-Status: GOOD (  25.50  )
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

TGUgc2FtZWRpIDIwIGF2cmlsIDIwMjQgw6AgMTM6MDkgKzA4MDAsIEppYW5mZW5nIExpdSBhIMOp
Y3JpdMKgOgo+IEhpIEh1Z2gsCj4gCj4gRnJpLCAxOSBBcHIgMjAyNCAxODoyODowMSArMDEwMCwg
SHVnaCBDb2xlLUJha2VyIHdyb3RlOgo+ID4gVGhlIHJlZ2lzdGVyIHJhbmdlIGF0IDB4ZmRiNTAw
MDAgbGVuZ3RoIDB4ODAwIGluY2x1ZGVzICJWRVBVMTIxIGNvcmUwIiBlbmNvZGVyCj4gPiByZWdz
IGF0IG9mZnNldCAwIGFuZCAiVkRQVTEyMSIgZGVjb2RlciByZWdzIGF0IG9mZnNldCAweDQwMCAo
cmVmZXJyaW5nIHRvIHRoZQo+ID4gVFJNIHYxLjAgUGFydCAxLCBzZWN0aW9uIDUuNS4xKS4gU28g
SSB0aGluayB0aGUgInJvY2tjaGlwLHJrMzU4OC12ZHB1MTIxIgo+ID4gY29tcGF0aWJsZSBpc24n
dCBleGFjdGx5IGNvcnJlY3QgdG8gdXNlIGZvciB0aGlzIGVudGlyZSBkZXZpY2UuCj4gCj4gVGhl
cmUgYXJlIGZpdmUgdmVwdTEyMSBjb3JlcyBmb3IganBlZyBlbmNvZGluZy4gQW5kIEVtbWFudWVs
IGlzIGRvaW5nIHdvcmsgb24KPiB0aGVtWzFdLiBBbmQgYXQgdGhlIG1vbWVudCB0aGUgZHJpdmVy
IGRvZXNu4oCZdCB5ZXQgc3VwcG9ydCBleHBvc2luZyB0aGVzZSBjb3Jlcwo+IGFsbCBhcyBhIHNp
bmdsZSB2aWRlbyBub2RlIHRvIHVzZXJzcGFjZSwgc28gRW1tYW51ZWwgb25seSBleHBvc2VzIG9u
ZSBzaW5nbGUKPiBjb3JlLgo+IAo+ID4gSU1PICJyb2NrY2hpcCxyazM1ODgtdnB1MTIxIiB3b3Vs
ZCBiZSBtb3JlIGFwcHJvcHJpYXRlIGlmIGluY2x1ZGluZyBib3RoIHRoZQo+ID4gZGVjb2RlciBh
bmQgZW5jb2Rlci4gSXQgYWxzbyByYWlzZXMgdGhlIHF1ZXN0aW9uIG9mIHdoZXRoZXIgdGhlIGRl
Y29kZXIgYW5kCj4gPiBlbmNvZGVyIHNob3VsZCBiZSBtb2RlbGVkIGluIERUIGFzIG9uZSBkZXZp
Y2UgbGlrZSBvbiBSSzMzOTksIG9yIHNlcGFyYXRlCj4gPiBkZXZpY2VzLiBJbiB0aGUgdmVuZG9y
IERUIFswXSB0aGV5IGFyZSBtb2RlbGVkIGFzIHR3byBkZXZpY2VzIGJ1dCB0aGV5IHNoYXJlCj4g
PiBjbG9ja3MsIHJlc2V0cywgSU9NTVUsIGFuZCBhICJyb2NrY2hpcCx0YXNrcXVldWUtbm9kZSIg
dmFsdWUuCj4gCj4gTm93IHdlIGhhdmUgNSBqcGVnIGVuYyBjb3Jlcywgb25lIGZyb20gMHhmZGI1
MDAwMCBhbmQgb3RoZXIgZm91ciBmcm9tCj4gMHhmZGJhMDAwMDAuIEkgdHJpZWQgdG8gYWRkIGEg
ZGVjb2Rpbmcgb25seSBjb3JlIDB4ZmI1MDQwMCwgYnV0IHRoYXQgZG9lcyBub3QKPiB3b3JrLiBT
byB0aGUgdnB1IHNob3VsZCBiZSBkZWZpbmVkIGFzIG9uZSBub2RlIGluIGRldmljZXRyZWUgZm9y
IGJvdGggZW5jb2Rlcgo+IGFuZCBkZWNvZGVyIGxpa2UgcmszMzk5Lgo+IAo+IFRoaXMgdnB1MTIx
IHNob3VsZCBiZSBleGFjdGx5IHRoZSBzYW1lIGFzIHRoZSBvbmUgaW4gcmszMzk5IHdoaWNoIHN1
cHBvcnRzIGJvdGgKPiBlbmNvZGluZyBhbmQgZGVjb2RpbmcuIEJ1dCB0aGUgY3VycmVudCBoYW50
cm8gZHJpdmVyIGhhcyBkaXNhYmxlZCBoMjY0IGRlY29kaW5nCgpJZiBpdHMgZXhhY3RseSB0aGUg
c2FtZSBjb21ibyBhcyBvbiByazMzOTksIGl0IGhhdmUgdG8gYmUgY29tYmluZWQgYXMgdGhleSBz
aGFyZQp0aGUgc2FtZSBpbnRlcm5hbCBtZW1vcnkuIFlvdSdsbCBub3RpY2UgdGhpcyBzdHJhbmdl
IHRoaW5nIGFib3V0IGJvdGggYmVpbmcKNjBmcHMgRkhEIHNlcGVyYXRlbHkgYW5kIDMwZnBzIEZI
RCBjb25jdXJyZW50bHksIHRoaXMgaXMgd2h5LgoKVGhpcyBsZWF2ZXMgbWUgd2l0aCBhIGZlZWxp
bmcgb3VyIHVuZGVyc3RhbmRpbmcgdGhlIG9mIEhXIGlzIGZhciBmcm9tIHBlcmZlY3QsCndlIHNo
b3VsZCBiZSBleHRyYSBjYXJlZnVsIGFuZCBjaXJjbGUgYmFjayB0byBSb2NrY2hpcCAocGluZyBL
ZXZlciwgaGUnbGwKdHJhbnNsYXRlIGFuZCBDQyB0aGUgcmlnaHQgcGVyc29uIEkgc3VwcG9zZSku
IFRob3VnaCwganVzdCBleHBvc2luZyB0aGUgZGVjb2RlciwKYW5kIGlnbm9yaW5nIHRoZSBlbmNv
ZGVyIHNlZW1zIGZpbmUgaW4gdGhlIHNob3J0IHRlcm0uIFVzZXJzcGFjZSB3aWxsIG1pc3MtCmJl
aGF2ZSB0aG91Z2ggd2hlbiB3ZSBpbnRyb2R1Y2UgdGhlIHJrdmRlYzIgZGVjb2Rlci4KCkFzIHdl
J2QgbGlrZSB0byBjaGFuZ2UgZnJvbSB0cml2aWFsIHRpbWUgbXVsdGlwbGV4aW5nIHRvIHByb3Bl
ciBjb3JlIHNjaGVkdWxpbmcKaW4gdGhlIGxvbmcgdGVybSAoZm9yIGlkZW50aWNhbCBjb3JlcyBv
bmx5KSwgd2UgaGF2ZSB0byBrZWVwIGluIG1pbmQgb2YgdGhlCnBvc3NpYmxlIGdyb3VwaW5nLCB3
aGljaCB3aWxsIG5lZWQgdG8gYmUgc29tZXRoaW5nIGRlZHVjaWJsZSBmcm9tIERULiBQbGVhc2UK
a2VlcCB0aGF0IGluIG1pbmQgd2hlbiBkZXNpZ25pbmcgRFQgZm9yIHRoaXMgY2hpcC4KCj4gc2lu
Y2UgdGhlcmUgaXMgYW50aG9lciBkZWNvZGVyIHJrdmRlYyBvbiByazMzOTkuIFRoaXMgdnB1MTIx
IGlzIHRoZSBvbmx5Cj4gZGVjb2RlciB3aGljaCBzdXBwb3J0cyBoMjU0IGRlY29kaW5nIG9uIHJr
MzU4OCwgc28gd2UgY2FuJ3QganVzdCB1c2UgdGhlCj4gdnB1X3ZhcmlhbnQgZnJvbSByazMzOTku
IE1heWJlIHdlIGNhbiB1c2UgcmszMzk5X3ZwdV92YXJpYW50IGJhY2sgd2hlbiBya3ZkZWMyCj4g
b24gcmszNTg4IGlzIHN1cHBvcnRlZCBieSBtYWlubGluZSBrZXJuZWwuCj4gCj4gQXQgdGhlIG1v
bWVudCB3ZSBjYW4ga2VlcCB0aGUgY29tcGF0aWJsZSBzdHJpbmcgc2FtZSBhcyB0aGUgb25lIGZy
b20gcmszNTZ4Lgo+IFNpbmNlIHRoZXJlIGFyZSBhbHJlYWR5IGpwZWcgZW5jIGNvcmVzIGF0IDB4
ZmRiYTAwMDAsIHdlIGNhbiBpZ25vcmUgdGhlIG9uZSBhdAo+IDB4ZmRiNTAwMDAuIFdoZW4gcmt2
ZGVjMiBpcyBzdXBwb3J0ZWQsIEkgd2lsbCBjaGFuZ2UgInJvY2tjaGlwLHJrMzU4OC12cHUxMjEi
Cj4gc2FtZSBhcyAicm9ja2NoaXAscmszMzk5LXZwdSIuCj4gCj4gQW5kIEkgdGhpbmsgY2hhbmdp
bmcgInJvY2tjaGlwLHJrMzU4OC12ZHB1MTIxIiB0byAicm9ja2NoaXAscmszNTg4LXZwdTEyMSIK
PiBzaG91bGQgbWF0Y2ggdGhlIGhhcmR3YXJlIGNvcnJlY3RseS4KPiAKPiBbMV0gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQwNDE4MTQxNTA5LjI0ODUwNTMtMS1saW5rbWF1dmVAbGlu
a21hdXZlLmZyLwo+IAo+IEJlc3QgcmVnYXJkcywKPiBKaWFuZmVuZwoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
