Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 486FECD6E4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 May 2026 14:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edrDE0Kyp0m5WaQeZ3QMWm0p5D6qcKmalqxcFYXNSyY=; b=pj0128P48WdFcf
	4rXiIoiCXGZHi+yLDiTLagUMMu1tcb51NOLxXyGTkqjWyXddYsd2ydajRYPPSgcaeO7GJRYtKVVl2
	qhOLd1/ay0D0xXahHgPL1sEvVkrPJARjWvQKMsBJ2TghKYicSuw9FMY18xm4KhTZg9j+/akkSzvya
	s3Au5li9bh+B58kzOpsr76zxEs+jfj7AIXlkuTPJj50c833pu4a1um3i/aLmOhj3HHOK4Jp6lqwsm
	5VpSjDoBwIIlYESr6BTlQnmOox3U3EyDcJSHCYYmuyx615Jog3pZpKvwT2AlIUcUg9Vypb090Bkar
	1waOn+ZjTXzHY83llZ4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSyTR-00000007YDx-0xEE;
	Fri, 29 May 2026 14:46:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSyTN-00000007YCb-0dye
	for linux-rockchip@lists.infradead.org;
	Fri, 29 May 2026 14:46:06 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64TDKxZB3568429
	for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2026 14:46:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y0uRdyGufttfYsaSEKi83F70fZI3azu4YBlntZSpPu4=; b=Bu3eS0IocdVwcgU3
	CGTFtvJsHhHnWhPRxdFyHJvNRpwXsNF23f6zIOH4cgaJR8KdAGRdP6uxlcvwADxj
	sdfmufVCxLd7S4lfAP8c/cW4sRRY/lpyXpZDEkiTEDqhadvk3J8s+KZEv5AZyR+s
	BLlH1NDNk2MGWYZT3ibgT6O4GUxvmCf0wOcKB+pp81pulce5ifgnR8A8j8q+N14n
	F1C6J6SSYrSHMySeK0wVDH6gHQ6tYPlqNGIMeZANuO5W6VP2b3D9cmsSeGaJwETy
	KiHxJjnm5MukNBqHY0ERqom4iOSWGsq+o0P/58FN7+fYFzqVW+9Nwps8SooyVzqZ
	b19KUA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eevumv17f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2026 14:46:04 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8b5f089a5c3so370465626d6.3
        for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2026 07:46:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780065963; cv=none;
        d=google.com; s=arc-20240605;
        b=isNYI/cQ0ORKzkjwpIirSyC/84QaATjqK+svNBAbScDpIAgOHaMHgZ/Jk0/2bfp/dU
         96BS68sLLWrDgVdg07jC33nfS0C3NB+zx1jAbGlCuAXVX2LZ9wthZsLNVu7TL5r/Iw3t
         E9S2N7mx/FT1remPr6h33f0Av7GdfMfSCGkao/pBEg9W/SWICSn4WvolfcOaocjU+wfI
         ljjrh7uzRF+NsTh+AYWxdQh6aOR4DtvgDKOD3E6v+XX5mjhPMKorFjqg9JiFmATZrNpb
         chbRVJfLJjG19+iv+T82GHPrM8wa1iBtDnagKj4FmqgT5NUo9TWXzrlVwN5xSqYFfVOl
         nsEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=y0uRdyGufttfYsaSEKi83F70fZI3azu4YBlntZSpPu4=;
        fh=zpSuNFbfT1CxdAKZ9xahDCRCoVTY92YBfsxljnwUeRU=;
        b=J04nx+SS4OMmLaM3NDxzXaVqZv5m3/uWWRDawcQksx8GO7wuhDuq1X1CCxN+Bir5pj
         dr6/e+WXpYe2T0qQdWO3zbhHWSis1lrXsReskh74plRh1F9QH6ubP/Y6E0f7ouJY6h/9
         ASi+Y/9DYGZGlJ4SHOQpe8zHaEgDQ6TL4Vs3fNP9HqqUDO1hPeGsg7Dn30+Q28GPEEHY
         uRhs0sx9cesmaGElM7t11aS7n44Ik4otkTucMizuqnobpCDyYSrWEYFSEDp/4aWiktvq
         V8Ul73POrIa3uSLxtyJ35Ydp2IXuQTO3aGSci7JsKYOe/+UurFCUYtgPGv4KHlOd1BYk
         p6gg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780065963; x=1780670763; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y0uRdyGufttfYsaSEKi83F70fZI3azu4YBlntZSpPu4=;
        b=IwX30/n7f4PZD9JUCBhi2mSJOH2kuzUFLKg59YbYGElao1HfwrUDrbeZL1x+f3w0O8
         uBp3BTSqfZSJMl/CJtGXE8KX9J6GOd06Ogyc/uwEk5vDp1RiCRpJARkuV/LwY+1VqjSM
         8hGpvP7+Ze2qf3SEWMn1HpT8DHEcxpyexfnVG+zGO/PX87kJZftRAoruCtohuYfHGTaH
         h7u0PmJJQMRkyuwbmYypw2NVL67A0LdF4voALDIJSdRhgHH6Egou0xUOUwFLoyLKlfIJ
         k8jp3/jl6c5B4Lse8LHqlKY24WXFv7LalQ/cd3t6aQmwQ0zDT0yvOPywPp4qihida2vH
         tdmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780065963; x=1780670763;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y0uRdyGufttfYsaSEKi83F70fZI3azu4YBlntZSpPu4=;
        b=bsC17Cu1DKlqzuExoQdCrlLz6LPhmaJms2eNdkMfeXi4pngsxlINnIp1AggoEuTCc9
         4IaVE0fsdPKVQaXl9EVKB5Q0IjVOGQb0UhtmMU5W0huuRME6D3b1GaKF4l0x8ep8EniD
         BT2cJYCoysBLIyJ7gtmb+WyEPTH11CsqaUzartBIfUBVC0f7DCsRmfvrWYaNi2EGPcB1
         kAMtkAgoGNHs8dsOKotFeSkFzbDB02IOK2SHk9ax2FHeJWEZfnUqTNCIRBSzJC5F+ar9
         zeghHAeHgqYDqvdnPNNEYz0pKSdsOH7VvMZDRks1itNEOSHztu7IbeVQkhet10yJdxJG
         0QKg==
X-Forwarded-Encrypted: i=1; AFNElJ8EfntlSmAgT58+UQwkp6C6X92TRg/tDfUTqtSz9fZ8Gldyy6h2KoCTkS+/YvTeZPjcbxOK8gL8VX4lPrI8lg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5903SmswjjhgnRXlGGCoQqPBFNP4EEujUPpiRiAmPgoLVmPb3
	2t8lKsoTPagVsnKi4GQZgX7CZ6nUuUgY3QeVq+u28rkmSvuDK/Id5UKWgY7IKRvke6BAfeOhGSB
	51ux0WfkM9YQ3qHZd2oX+wseeCRW/yo+3t3d73Tw2cWwmBOYrtJhq93z38zzSBc9ywmUCFRPx/J
	/Ag4tSKLUczqpA4IP9XBL9uNo/8GU5yuPJIDXs/TCy4ac24pVvuw==
X-Gm-Gg: Acq92OHj7OsWTsYtl02tmfPxEckqgNoERphKHDJYLKVfxcTyze6tzWHYQMkBZTxtp9s
	UPec7RRE6fOBykggHsGVLPHaXMLaUEEc38UfmC0ieMdRUZaFrA7O4L+h0IglPK3giwB2xlPN10s
	UIx/ZyqxPkOOQtUFXskzp/ZZ+7tQ4K32WMMfysdDcUSs+wuzTI43RSBlcxIw/g3bSUbrS23sIzs
	gYUuNT73Ie61eLQjA==
X-Received: by 2002:a05:6214:230b:b0:8ca:10c9:845d with SMTP id 6a1803df08f44-8cce801f126mr36093966d6.31.1780065963460;
        Fri, 29 May 2026 07:46:03 -0700 (PDT)
X-Received: by 2002:a05:6214:230b:b0:8ca:10c9:845d with SMTP id
 6a1803df08f44-8cce801f126mr36089856d6.31.1780065958269; Fri, 29 May 2026
 07:45:58 -0700 (PDT)
MIME-Version: 1.0
References: <20260522184307.2979579-1-heiko@sntech.de>
In-Reply-To: <20260522184307.2979579-1-heiko@sntech.de>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Fri, 29 May 2026 16:45:47 +0200
X-Gm-Features: AVHnY4J_FLHe1mGcqIVr9GZCUybu2z_sAx_8iofpKeK_xPfv3mpX0W3pewKBvLE
Message-ID: <CAPx+jO9kKCQE+ZtKhJWX9mztEQ2m93irdqt6910wG=9M9zN4KA@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc-rockchip: Add missing private data for very
 old controllers
To: Heiko Stuebner <heiko@sntech.de>
Cc: ulfh@kernel.org, shawn.lin@rock-chips.com, jh80.chung@samsung.com,
        linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
X-Proofpoint-GUID: VcnPznO16x7sbri7FPT-exXzPVrvqknj
X-Proofpoint-ORIG-GUID: VcnPznO16x7sbri7FPT-exXzPVrvqknj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI5MDE0NyBTYWx0ZWRfX2fq1ur/dzIHb
 HYdE6w+1OtDnzaTD3LqOS/xmnwfWrsmNwZX1RgyQQFu4auWR8ErQRIZW3nW4hmsU1v5w69XrUMc
 +FYQLibSoxjGFciygCRoLQtYfYh+CKbQ/f+9zzsyh3LfPswCrEJ3VAt8Fv1BgZJYHyXsWT8cgmP
 Y334J+KmFI9QS7Emum7XWgD1WGh9qs2nCLPpxn4lsFQ4prs3Qf3E1iwcp584bVaPto1pn/Gucqn
 Yt9ewf7qj5NYvvFryCIb+ogUMpUWRHXjV6imbRCX6b4uvRvoJFOMXmZH9w91esRQ+RGpe2c+pmK
 IXhTVrWod7p1LzXps4OIIC1grrXlQ6wREa0X1OPziDe60osrjaVlET/xMKKmmlV0J6l7Vzk2sWp
 hbOsJcnfPHSkN892fKQcxbdmh9dX2UTwgdug2Emv5SdIbjyg/pzZKrYFw/GSpitqe5Z/VH1H8xo
 OwGprYFZ8viGrhA+8iw==
X-Authority-Analysis: v=2.4 cv=cObQdFeN c=1 sm=1 tr=0 ts=6a19a6ac cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=3WHJM1ZQz_JShphwDgj5:22 a=JfrnYn6hAAAA:8 a=VwQbUJbxAAAA:8
 a=zCIS9O9Q-TFeY09dWLwA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-29_04,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1011 spamscore=0 malwarescore=0
 phishscore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2605290147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_074605_732894_03CD09AB 
X-CRM114-Status: GOOD (  25.95  )
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

T24gRnJpLCBNYXkgMjIsIDIwMjYgYXQgODo0M+KAr1BNIEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gVGhlIHJlYWxseSBvbGQgY29udHJvbGxlcnMgKHJrMjkyOCwg
cmszMDY2LCByazMxODgpIGRvIG5vdCBzdXBwb3J0IFVIUwo+IHNwZWVkcyBhdCBhbGwsIGFuZCB0
aHVzIG5ldmVyIGhhbmRsZWQgcGhhc2UgZGF0YS4KPgo+IEZvciB0aGF0IHJlYXNvbiBpdCBuZXZl
ciBoYWQgYSBwYXJzZV9kdCBjYWxsYmFjayBhbmQgbm8gZHJpdmVyIHByaXZhdGUKPiBkYXRhIGF0
IGFsbC4KPgo+IENvbW1pdCBmZjZmMDI4NmM4OTYgKCJtbWM6IGR3X21tYy1yb2NrY2hpcDogQWRk
IG1lbW9yeSBjbG9jayBhdXRvLWdhdGluZwo+IHN1cHBvcnQiKSBtYWtlcyB0aGUgcHJpdmF0ZSBk
YXRhIHNvcnQgb2YgbWFuZGF0b3J5LCBiZWNhdXNlIHRoZSBpbml0Cj4gZnVuY3Rpb24gY2hlY2tz
IHdoZXRoZXIgcGhhc2VzIGFyZSBjb25maWd1cmVkIGludGVybmFsbHkgb3IgdGhyb3VnaCB0aGUK
PiBjbG9jayBjb250cm9sbGVyLgo+Cj4gVGhpcyByZXN1bHRzIGluIHRoZSBvbGQgU29DcyB0aGVu
IGV4cGVyaWVuY2luZyBOVUxMLXBvaW50ZXIgZGVyZWZlcmVuY2VzCj4gd2hlbiB0aGV5IHRyeSB0
byBhY2Nlc3MgdGhhdCBwcml2YXRlLWRhdGEgc3RydWN0Lgo+Cj4gV2hpbGUgd2UgY291bGQgaGF2
ZSBpZiAocHJpdikgY29uZGl0aW9uYWxzIGluIGFsbCBwbGFjZXMsIGl0J3Mgd2F5IGxlc3MKPiBj
bHV0dGVyeSB0byBqdXN0IGdpdmUgdGhlIG9sZCB0eXBlcyB0aGVpciBwcml2YXRlLWRhdGEgc3Ry
dWN0Lgo+Cj4gRml4ZXM6IGZmNmYwMjg2Yzg5NiAoIm1tYzogZHdfbW1jLXJvY2tjaGlwOiBBZGQg
bWVtb3J5IGNsb2NrIGF1dG8tZ2F0aW5nIHN1cHBvcnQiKQo+IENjOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4K
CkFwcGxpZWQgZm9yIGZpeGVzLCB0aGFua3MhCgpLaW5kIHJlZ2FyZHMKVWZmZQoKCj4gLS0tCj4g
IGRyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMgfCAxNyArKysrKysrKysrKysrKysr
Kwo+ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMgYi9kcml2ZXJzL21tYy9ob3N0L2R3X21t
Yy1yb2NrY2hpcC5jCj4gaW5kZXggYzZlZWNlNGVjM2ZkLi43NWM4MmZmMjBmMTcgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMv
bW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKPiBAQCAtNDQxLDYgKzQ0MSwyMiBAQCBzdGF0aWMg
aW50IGR3X21jaV9jb21tb25fcGFyc2VfZHQoc3RydWN0IGR3X21jaSAqaG9zdCkKPiAgICAgICAg
IHJldHVybiAwOwo+ICB9Cj4KPiArc3RhdGljIGludCBkd19tY2lfcmsyOTI4X3BhcnNlX2R0KHN0
cnVjdCBkd19tY2kgKmhvc3QpCj4gK3sKPiArICAgICAgIHN0cnVjdCBkd19tY2lfcm9ja2NoaXBf
cHJpdl9kYXRhICpwcml2Owo+ICsgICAgICAgaW50IGVycjsKPiArCj4gKyAgICAgICBlcnIgPSBk
d19tY2lfY29tbW9uX3BhcnNlX2R0KGhvc3QpOwo+ICsgICAgICAgaWYgKGVycikKPiArICAgICAg
ICAgICAgICAgcmV0dXJuIGVycjsKPiArCj4gKyAgICAgICBwcml2ID0gaG9zdC0+cHJpdjsKPiAr
Cj4gKyAgICAgICBwcml2LT5pbnRlcm5hbF9waGFzZSA9IGZhbHNlOwo+ICsKPiArICAgICAgIHJl
dHVybiAwOwo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50IGR3X21jaV9yazMyODhfcGFyc2VfZHQoc3Ry
dWN0IGR3X21jaSAqaG9zdCkKPiAgewo+ICAgICAgICAgc3RydWN0IGR3X21jaV9yb2NrY2hpcF9w
cml2X2RhdGEgKnByaXY7Cj4gQEAgLTUxNCw2ICs1MzAsNyBAQCBzdGF0aWMgaW50IGR3X21jaV9y
b2NrY2hpcF9pbml0KHN0cnVjdCBkd19tY2kgKmhvc3QpCj4KPiAgc3RhdGljIGNvbnN0IHN0cnVj
dCBkd19tY2lfZHJ2X2RhdGEgcmsyOTI4X2Rydl9kYXRhID0gewo+ICAgICAgICAgLmluaXQgICAg
ICAgICAgICAgICAgICAgPSBkd19tY2lfcm9ja2NoaXBfaW5pdCwKPiArICAgICAgIC5wYXJzZV9k
dCAgICAgICAgICAgICAgID0gZHdfbWNpX3JrMjkyOF9wYXJzZV9kdCwKPiAgfTsKPgo+ICBzdGF0
aWMgY29uc3Qgc3RydWN0IGR3X21jaV9kcnZfZGF0YSByazMyODhfZHJ2X2RhdGEgPSB7Cj4gLS0K
PiAyLjQ3LjMKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
