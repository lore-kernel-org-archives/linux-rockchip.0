Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDFBCCF6493
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Sep 2024 03:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1nY4m5fbSwWWBmUKFPGaBgK9/UOYaLci97bGHUyXysc=; b=v9PVPhjOGehp8I
	7kQO3ynh5FFXYWx/IMM6uia0SU+JLWDAoqcNWRojUNQn5nk/oRuWzwNN3mc5CejTA81qiXXGaGP+i
	Z7Cs7AO+hagqWG6zIoIkRedsdAw8LLGzUPXNWBEo7kG4JEwhTLTUDQbZksWDktZGtyp/DcrtUXSK1
	hfW7axFo9uFeNWOlw9YJWckxenBCNO0z2iIU61rNC4WY9I0o1lbrPDeuJGAy8FveTfEO9hN7i42Si
	7WQ54B9LXZDDvP6xXcnyh6wzOdJbPIillO4j2ooddPl3ggGrzlsBA25A8es5esjfTS+Z4yxrHRtAE
	t/l5tOJJ/quW3wkIKMmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suOXD-0000000CYrI-3rjS;
	Sat, 28 Sep 2024 03:54:19 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suOXA-0000000CYqR-2DLf;
	Sat, 28 Sep 2024 03:54:18 +0000
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-5e57b7cac4fso1632231eaf.1;
        Fri, 27 Sep 2024 20:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727495654; x=1728100454; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5xSAL7rchY/v+2Rzw+lrnyuOu9f7/62fqJf77xc7j10=;
        b=fLwN0cd2w6b09cfPWYfZqXcI7MJAnd4lkRqWEFJB4SOh2g4V2+nKqxksM5qS9UHuiY
         +ySKP75Pmkswpm5vPrWZZqxNO3FmXve5sKRUN0wS7+PpzxiJMa3ZNdMFfmTDQftHT4do
         rMyc8cs2eHX2SDKdVbD3Cf4T29aEgqnmceD9L5MzEVfzK+k6X/WwczHfyVHz8L2KEZQx
         9LmuWJzL8wNzOvZhFzouu29AZ/N5Pk331nn869N70lW74zJohfFIk7tJ02wM1D+jyoTj
         2aqa7ueyma4RKTxn2KTc+cGOo9xrlkdfGmoWms2J9TpyTlXrRqOsVtvj6lTnDatHRzo+
         dmRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727495654; x=1728100454;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5xSAL7rchY/v+2Rzw+lrnyuOu9f7/62fqJf77xc7j10=;
        b=IkakqlDzPuOiLo/IbpBZ6l6jnheJ0eD3zSJRcbM+9IeoipTH7SrnVw3nuW1VouaPhI
         NRvNpM+R4drfEujTxxQkzq1oZKXP5+/AH+3TcQSCXVG13IdPJTa/2UyocdKye3t5SzXe
         ugicgBAExfqqbqwnrygYFt1djMpIkyDCLthPptM95OodxzoTYLVdmGIspy6bmWa30+t8
         4P4ZGKJbAgT8xnyrsB/DM/s79OmzlXui4qk6YOy9v6JI9bTIZfM+P+Rp59f2abkCdupf
         ufdYMxQ2rK7p73njgitSvd7uJ9mMA+V04hCwFd0uOTejYlNJocGv+z7Nyhqy3Fs1hCDk
         hv9A==
X-Forwarded-Encrypted: i=1; AJvYcCVB91RT0gGFFe0sB83/jTEAsZuLueuK+4xS3mMyPZ4s3JLttbbQUs+v406OpKRJ8vZ1wbewfHxKMxPse7SWvIU=@lists.infradead.org, AJvYcCWo/KIpB5tfxrHORK9mvg6Pyo1ZjhFFA2Qcd+GWDNQ2Lx8uwSc1tbqvZmqqQ3BYpa+vAKEommbW/3m1m4FKP7TN@lists.infradead.org
X-Gm-Message-State: AOJu0YwetV72wa70JoK3Evv8VtIGdDo2jHrjp3o3F+6g9HhTaK8ncTLq
	nV73SRrkudVZgvne2duTMNfSxzFyLfn0NUVXhvU9EHHHtGm9MniDfbFTR4OATpFIGzHgpO9R8+w
	V1HYvkAibg8D1CW3MI2cXxyNpRqw=
X-Google-Smtp-Source: AGHT+IFFVM/jy3GYgQAk0AUcs3/sUs86ULzn48zHEdO6RjqIDIiJRQA43uZkEY2zPfymuKbW/S4rRLppwl3fVJ6w2Tk=
X-Received: by 2002:a05:6820:50d:b0:5e1:c19d:3f4e with SMTP id
 006d021491bc7-5e7727bb098mr3002051eaf.8.1727495654182; Fri, 27 Sep 2024
 20:54:14 -0700 (PDT)
MIME-Version: 1.0
References: <CANAwSgSgwx0kuV-boF14_WXiPkE8KXxOWOfS2e_QOWMKgKSLnA@mail.gmail.com>
 <20240927182238.GA85539@bhelgaas>
In-Reply-To: <20240927182238.GA85539@bhelgaas>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 28 Sep 2024 09:23:58 +0530
Message-ID: <CANAwSgSfdU9Ms_JCDdU+c9CxmBqGy1i8QkLtuorjMAw9GQe16w@mail.gmail.com>
Subject: Re: [PATCH v5 1/6] PCI: rockchip: Simplify clock handling by using
 clk_bulk*() function
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_205416_593021_8A4D90C2 
X-CRM114-Status: GOOD (  25.56  )
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

SGkgQmpvcm4sCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3IGNvbW1lbnRzLgoKT24gRnJpLCAyNyBT
ZXB0IDIwMjQgYXQgMjM6NTIsIEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNAa2VybmVsLm9yZz4gd3Jv
dGU6Cj4KPiBPbiBGcmksIFNlcCAyNywgMjAyNCBhdCAwMTo0Nzo0NFBNICswNTMwLCBBbmFuZCBN
b29uIHdyb3RlOgo+ID4gT24gTW9uLCAyIFNlcHQgMjAyNCBhdCAwMDowMywgQW5hbmQgTW9vbiA8
bGludXguYW1vb25AZ21haWwuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gUmVmYWN0b3IgdGhlIGNs
b2NrIGhhbmRsaW5nIGluIHRoZSBSb2NrY2hpcCBQQ0llIGRyaXZlciwKPiA+ID4gaW50cm9kdWNp
bmcgYSBtb3JlIHJvYnVzdCBhbmQgZWZmaWNpZW50IG1ldGhvZCBmb3IgZW5hYmxpbmcgYW5kCj4g
PiA+IGRpc2FibGluZyBjbG9ja3MgdXNpbmcgY2xrX2J1bGsqKCkgQVBJLiBVc2luZyB0aGUgY2xr
X2J1bGsgQVBJcywKPiA+ID4gdGhlIGNsb2NrIGhhbmRsaW5nIGZvciB0aGUgY29yZSBjbG9ja3Mg
YmVjb21lcyBtdWNoIHNpbXBsZXIuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFuYW5kIE1v
b24gPGxpbnV4LmFtb29uQGdtYWlsLmNvbT4KPiA+Cj4gPiBEbyB5b3UgaGF2ZSBhbnkgcmV2aWV3
IGNvbW1lbnRzIG9uIHRoaXMgc2VyaWVzPwo+Cj4gTG9va3MgbGlrZSBuaWNlIHdvcmssIHRoYW5r
cy4gIE1pbm9yIHRpcHMgYmVsb3cuICBXZSdsbCBzdGFydCBhcHBseWluZwo+IFBDSSBwYXRjaGVz
IHRvIHY2LjEzLXJjMSBhZnRlciBpdCBpcyB0YWdnZWQuICBJdCBsb29rcyBsaWtlIHRoZXNlIHdp
bGwKPiBhcHBseSBjbGVhbmx5LCBzbyBubyByZWJhc2luZyBuZWVkZWQuCj4KPiAgIC0gSXQgd291
bGQgYmUgaGVscGZ1bCBpZiB5b3UgY2FuIGFkZCBhIGNvdmVyIGxldHRlciAoMC9uKSwgd2hpY2gg
aXMKPiAgICAgYSBnb29kIHBsYWNlIGZvciB0aGUgb3ZlcmFsbCBkaWZmc3RhdCBhbmQgc2VyaWVz
LWxldmVsIGNoYW5nZWxvZy4KPgo+ICAgLSBUaGlzIHY1IHNlcmllcyBhZGRzIGRyaXZlcnMvcGh5
IHBhdGNoZXMsIHdoaWNoIGFyZSBhbHNvIHJlbGF0ZWQgdG8KPiAgICAgcm9ja2NoaXAsIGJ1dCB3
aWxsIGJlIGhhbmRsZWQgYnkgYSBkaWZmZXJlbnQgbWFpbnRhaW5lciwgc28gYmVzdAo+ICAgICB0
byBzZW5kIHRoZW0gYXMgc2VwYXJhdGUgc2VyaWVzIChhbmQgb2YgY291cnNlIHNlbmQgdGhlIHBo
eQo+ICAgICBwYXRjaGVzIHRvIHRoZSByaWdodCBtYWludGFpbmVyLCBsaW51eC1waHksIGV0Yyku
Cj4KPiAgIC0gImI0IGFtIC1vL3RtcC8gMjAyNDA5MDExODMyMjEuMjQwMzYxLTItbGludXguYW1v
b25AZ21haWwuY29tIgo+ICAgICBjb21wbGFpbnMgYWJvdXQgc29tZXRoaW5nLCBJIGR1bm5vIGhv
dyB0byBmaXg6Cj4KPiAgICAgICBDaGVja2luZyBhdHRlc3RhdGlvbiBvbiBhbGwgbWVzc2FnZXMs
IG1heSB0YWtlIGEgbW9tZW50Li4uCj4gICAgICAgLS0tCj4gICAgICAgICDinJcgW1BBVENIIHY1
IDEvNl0gUENJOiByb2NrY2hpcDogU2ltcGxpZnkgY2xvY2sgaGFuZGxpbmcgYnkgdXNpbmcgY2xr
X2J1bGsqKCkgZnVuY3Rpb24KPiAgICAgICAgIOKclyBbUEFUQ0ggdjUgMi82XSBQQ0k6IHJvY2tj
aGlwOiBTaW1wbGlmeSByZXNldCBjb250cm9sIGhhbmRsaW5nIGJ5IHVzaW5nIHJlc2V0X2NvbnRy
b2xfYnVsayooKSBmdW5jdGlvbgo+ICAgICAgICAg4pyXIFtQQVRDSCB2NSAzLzZdIFBDSTogcm9j
a2NoaXA6IFJlZmFjdG9yIHJvY2tjaGlwX3BjaWVfZGlzYWJsZV9jbG9ja3MgZnVuY3Rpb24gc2ln
bmF0dXJlCj4gICAgICAgICDinJcgW1BBVENIIHY1IDQvNl0gcGh5OiByb2NrY2hpcC1wY2llOiBT
aW1wbGlmeSBlcnJvciBoYW5kbGluZyB3aXRoIGRldl9lcnJfcHJvYmUoKQo+ICAgICAgICAg4pyX
IFtQQVRDSCB2NSA1LzZdIHBoeTogcm9ja2NoaXAtcGNpZTogQ2hhbmdlIHRvIHVzZSBkZXZtX2Ns
a19nZXRfZW5hYmxlZCgpIGhlbHBlcgo+ICAgICAgICAg4pyXIFtQQVRDSCB2NSA2LzZdIHBoeTog
cm9ja2NoaXAtcGNpZTogVXNlIHJlZ21hcF9yZWFkX3BvbGxfdGltZW91dCBmb3IgUENJZSByZWZl
cmVuY2UgY2xrIFBMTCBzdGF0dXMKPiAgICAgICAgIC0tLQo+ICAgICAgICAg4pyXIEJBRFNJRzog
REtJTS9nbWFpbC5jb20KPgo+ICAgLSBJbiAzLzYgYW5kIDYvNiBjb21taXQgbG9ncywgYWRkIHBh
cmVucyBhZnRlciBmdW5jdGlvbiBuYW1lcyBhcwo+ICAgICB5b3UgZGlkIGVsc2V3aGVyZS4KPgo+
ICAgLSBTdXBlciBuaXQ6IEluIDUvNiwgcy9DaGFuZ2UgdG8gdXNlL1VzZS8uICBFdmVyeSBwYXRj
aCBpcyBhIGNoYW5nZSwKPiAgICAgc28gIkNoYW5nZSB0byIgZG9lc24ndCBhZGQgYW55IGluZm9y
bWF0aW9uLgo+CgpPaywgSSB3aWxsIHRyeSB0byBmaXggYW5kIGltcHJvdmUgb24geW91ciBzdWdn
ZXN0aW9uIGluIHRoZSBuZXh0IHZlcnNpb24uCgo+IEJqb3JuCgpUaGFua3MKLUFuYW5kCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
