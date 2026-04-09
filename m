Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBA02EA3C4E
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Apr 2026 13:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvVAAIuNs2ivWgDVqT8zuVuw6CC5xgVDcL08oUarryw=; b=tBIQ+HE7W2flEU
	aAHOTPJsij3t8XdHhOPjF44t//ObJ3s5X0wjQ/q5bcm1L1p5QtH7GjCt7pjiGa8iK21m2jnnwWZLd
	NziR2tBLljyM2vr7LLSCwzGTRF0mXEenXP40hn5GmOa+qguZfVOyTZXh1QMvIims4FfV+4QWBUieQ
	la3yFuEFwlhqUb3gNzmNcFSIQfWogdefUfzeExHaI4O/G8PB5PlDt0QmvJRQqwTuqNH3UaGUpjev/
	YAW+owY6dHpWFGT207HxdyoSL67DtIidgoisCIKE+Tx3LKsUd4/dMrNyI9QN/plAm36HFw70zWxVe
	o/bbeBmmsCylhKSLTOYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApTL-0000000AWDe-3DBd;
	Thu, 09 Apr 2026 13:31:03 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApTA-0000000AW8z-07Kv
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Apr 2026 13:31:03 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-b980b35534eso130356066b.1
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Apr 2026 06:30:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775741450; cv=none;
        d=google.com; s=arc-20240605;
        b=Rqwx+08poOINrjGQXtYdE6Hqc+MCIQZM/Irs2cCwB8WiewOjs6gJ9MHipU5L+I8o1T
         pZVDO28MR1EyKagvthLxKWB4UG/qGtj7oO8lrmHCJa5qBFyY+NaU+gK0Bxf+ua+3OvQx
         5mZgvBhde/AqeW3VABPO5191z/hkjBn04TuSesX/+MJI4//EE5A0hpk/vPw1Ng/EAdp3
         wyigNKJAtRtrNEdrkCPMYzP2RVrDauitGHqMU7LrF7h6mfXzSQLye1M4NyjcjAQbG+3o
         DD0xvrlt9ZM2IBnK69L5Yur3O29/DCy3yj2XuglG0rWqZTS7eYyC4OGJDCGFGtS1U6wQ
         2xfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Ev3RMMGjO06UYL38WMnmpo1Zv5dlNGgwSiRluf+t5pw=;
        fh=EapZBB5SKRUzXJWJtqGhU0kMSN/Rm1t+TgOqhcLahV4=;
        b=FmNzeoaY79AZgA1dBxmforNcyWrMn1Ldy/x+5n7a/lo7fZOKT3B38MKgoa9ec2/fD2
         HJIXs7xkxwSkOsOYKpKKAOr223M8uHxsYHQxcjaDBA0lBtOcA6D/sWd+vUGJ4B6rK3xb
         D0vMd2njt1HguPSZoufp6dS1k57jlYYV7RjmmnRsiggJv4Kvrq5C+lCoJuUgGHhEYaBF
         EACh8ioyO2Sn/YJlQYky+ysNd5W9TdKyHt89FguZ0KPfOceXHmoffke7xP0My2AAmzN3
         dZBPqloNEAhTlz2dDDDXdKhj+5ZYYFQ5DtdlJnkpZ8EwAm3kIIVAicEZZO1Ew+VZGKEV
         r/ig==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775741450; x=1776346250; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ev3RMMGjO06UYL38WMnmpo1Zv5dlNGgwSiRluf+t5pw=;
        b=HngNAlVRDIwXviVP/WR297oaMgEJX5S6i5A4z188dqPE8gg0CezGazne9mLkZJknc+
         h7ZXF8GANdgq60mYf+WmLRRTaktUYH1C1KwgCgKc7bhC1cWQkN85zOn5rUl67jqMzWfR
         9bQ1P5CpSE9wBsYj3/a0txgt9I/ZWNxJ9PIEh5BWHIRDvVRtTBkAJGsflYhKQE/yh9R2
         UGTJmmyi8X3dBkOXmeKfdozE7+dh69ny5Z2W42t9AHxF9QuhFVlEUeGWrBIyB2ch2oEk
         IxJYwl+cTr06hqS94yjTNgbigylzzbtNp6GNZtYM05G8Ki2/ON+4LPnMrCcooBM/2png
         snuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775741450; x=1776346250;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ev3RMMGjO06UYL38WMnmpo1Zv5dlNGgwSiRluf+t5pw=;
        b=EDd6f+KIgBbf32EJmQgIELX0diS5hEe2+F+nYJljFlVIVYj+GbAVlcK9239xRw4a6s
         sknvgJDASgy0e4f9IFd9epczRdnzUU1ZPVce2InXdecbiBUfsUNUX2B2WOaQQT+gNdYV
         NZUNXTOjJI/Qp9iD9mSBIB4jxjSUJfPUhq4lDDyJwBbxQmuKTHkLdFXmyTf4B4ugFdqh
         Ls4I/F/oR6iaNF0vozHKr8HBHYtcC/8BfJnXAVqXzMsTEKKRIoCAkmFnq634e8dz/XX0
         yb3zEK8sSN62WGbSAM0er4drtGo8xxEpBoW1bsvCNxDxkO2BCCSN5DG5OMpAKo5o8OVj
         Jduw==
X-Forwarded-Encrypted: i=1; AJvYcCUvzeBY6xJYZO507FUKvIQFlytC6IAGDO5u0GzYMLXunBARIFs4hXwj4ZBy0D20OH2TNOhtSAH6OSQphd98KQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxX2Q1sXbaoOJRYhC2zOxZveI7ZuxyYxjwb2PFntIf+it3EEWZE
	rBmspQaup7Z2BwFcfuTbPEDf6kXSV4LQXVh64/K2zc/vr5grsS/cNGzKm7g3FfAvFcJH2ok9bXo
	FmdxwduujiNpxqJYnySddmtgaxqGm6kK4KckJ
X-Gm-Gg: AeBDietwXVi3swjZpZPFy6MMWHYZWeNTjAjfNMbz0RRjSTgyi3Hd6gI8TeQucOt4voW
	02LwoAAhUrMk4wy67tC0DzYx2mCc3NHiUA+CgY70Lbty8atuvL1buZouVR7ZBsilJkZ9PKxUjcZ
	KOaCpUtZWvHcdlxpLtbtdpH+BXR09Xn709FBQH/XOE1Sypx+Wajl4DqoNb3dwadKexsXmqW+4Mt
	lfPq3cr8HRl+Xz4jXEnRpwgSfH2jOjUuGXXd0EMuJtf0VbSCLRNe2Cy2qHH/nFQkeZ2awaV9sio
	YHdu2Q==
X-Received: by 2002:a17:907:9727:b0:b98:42de:3700 with SMTP id
 a640c23a62f3a-b9d46227f6fmr183342266b.17.1775741449801; Thu, 09 Apr 2026
 06:30:49 -0700 (PDT)
MIME-Version: 1.0
References: <20260409044939.7647-1-linux.amoon@gmail.com> <add2QFfHd5Jv9XU7@fedora>
In-Reply-To: <add2QFfHd5Jv9XU7@fedora>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 9 Apr 2026 19:00:32 +0530
X-Gm-Features: AQROBzDhqGfLcjBjGT2Hvs3ZMinMrOpBMtp_gMJbNkkfMBequ6wtYDsgQQOO3PI
Message-ID: <CANAwSgRqEJ5sqjY4bAj=PiK8wA_LOYDu1OOPLWsL8u_4Afu+rg@mail.gmail.com>
Subject: Re: [PATCH v1] phy: rockchip-snps-pcie3:phy: Configure clkreq_n and
 PowerDown for all lanes
To: Niklas Cassel <cassel@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_063052_410743_45353EB3 
X-CRM114-Status: GOOD (  15.83  )
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

SGkgTmlrbGFzLAoKVGhhbmtzIGZvciB5b3VyIHJldmlldyBjb21tZW50cy4KCk9uIFRodSwgOSBB
cHIgMjAyNiBhdCAxNToxOSwgTmlrbGFzIENhc3NlbCA8Y2Fzc2VsQGtlcm5lbC5vcmc+IHdyb3Rl
Ogo+Cj4gK1NoYXduCj4KPiBIZWxsbyBBbmFuZCwKPgo+IE9uIFRodSwgQXByIDA5LCAyMDI2IGF0
IDEwOjE5OjMwQU0gKzA1MzAsIEFuYW5kIE1vb24gd3JvdGU6Cj4gPiBEdXJpbmcgdGhlIHJrMzU4
OF9wM3BoeV9pbml0IHNlcXVlbmNlLCB0aGUgZHJpdmVyIG5vdyBleHBsaWNpdGx5Cj4KPiBQbGVh
c2UgdXNlIGltcGVyYXRpdmUgbW9vZCwgYWN0aXZlIHZvaWNlLgo+Cj4KPiA+IGNvbmZpZ3VyZXMg
ZWFjaCBsYW5lJ3MgQ09OMCByZWdpc3RlciB0byBlbnN1cmUKPiA+IC0gUElQRSA0LjMgQ29tcGxp
YW5jZTogY2xrcmVxX24gKGJpdCA2KSBpcyBmb3JjZWQgbG93IChhc3NlcnRlZCkgdG8gbWVldAo+
ID4gICBzaWRlYmFuZCBzaWduYWwgcmVxdWlyZW1lbnRzLgo+ID4gLSBBY3RpdmUgUG93ZXIgU3Rh
dGU6IFBvd2VyRG93blszOjBdIChiaXRzIDExOjgpIGlzIHNldCB0byBQMAo+ID4gICAoTm9ybWFs
IE9wZXJhdGlvbmFsIFN0YXRlKSB0byBlbnN1cmUgdGhlIFBIWSBpcyBmdWxseSBwb3dlcmVkIGFu
ZCByZWFkeQo+ID4gICBmb3IgbGluayB0cmFpbmluZy4KPiA+Cj4gPiBUaGVzZSBjaGFuZ2VzIGVu
c3VyZSB0aGF0IGFsbCBsYW5lcyBhcmUgY29uc2lzdGVudGx5IHRyYW5zaXRpb25lZCBmcm9tCj4g
PiByZXNldCBpbnRvIGEga25vd24tZ29vZCBvcGVyYXRpb25hbCBzdGF0ZSwgcHJldmVudGluZyB1
bmRlZmluZWQgYmVoYXZpb3IKPiA+IGFuZCBlbnN1cmluZyB0aGUgUEhZIGlzIHJlYWR5IGZvciBo
aWdoLXNwZWVkIGRhdGEgdHJhbnNtaXNzaW9uLgo+Ck9rLCBJIHdpbGwgdXBkYXRlIHRoaXMuSSBm
Cj4gRmlyc3QgZGVzY3JpYmUgdGhlIHByb2JsZW0sIHRoZW4gZGVzY3JpYmUgaG93IHlvdSBmaXgg
aXQuCkkgd2FzIGludmVzdGlnYXRpbmcgdGhlIFBDSUUzMFg0X0NMS1JFUW4gaXNzdWUgaGlnaGxp
Z2h0ZWQgYnkgU2hhd24gTGluLAphbmFseXppbmcgdGhlIFJLMzU4OCBUUk0gY2xvY2sgcmVxdWVz
dCBjb25maWd1cmF0aW9ucyAocGFnZSA4NzgpCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzc3ZjBkM2MyLTY0OWYtNzcwZC0xNjM2LTZmZDUyZjNiNWY1ZUByb2NrLWNoaXBzLmNvbS8K
Ckxvb2tpbmcgaW50byB0aGUgcG93ZXIgbWFuYWdlbWVudCBzdGF0ZSBvbiBJbnRlbOKAmXMgUENJ
IEV4cHJlc3MgUG93ZXIgTWFuYWdlbWVudApkb2N1bWVudGF0aW9uLCB3aGljaCBkZWZpbmVzIHN0
YXRlcyBzdWNoIGFzIFAwLCBQMHMsIFAxLCBQMS4xLCBQMS4yLCBhbmQgUDIKVW5kZXJzdGFuZGlu
ZyB0aGlzIG1hcHBpbmcgaXMgZm9yIGludGVycHJldGluZyB0aGUgYmVoYXZpb3Igb2YgbGFuZS1z
cGVjaWZpYwpjbG9jayByZXF1ZXN0cywgc28gaW5pdGlhbGl6ZSB0aGlzIHRvIHRoZSBQMCBzdGF0
ZS4uCgpbMl0gaHR0cHM6Ly93d3cuaW50ZWwuY29tL2NvbnRlbnQvZGFtL3d3dy9wdWJsaWMvdXMv
ZW4vZG9jdW1lbnRzL3doaXRlLXBhcGVycy9waHktaW50ZXJmYWNlLXBjaS1leHByZXNzLXNhdGEt
dXNiMzAtYXJjaGl0ZWN0dXJlcy0zLjEucGRmCj4KPgo+IEtpbmQgcmVnYXJkcywKPiBOaWtsYXMK
ClRoYW5rcwotQW5hbmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
