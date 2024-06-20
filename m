Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B276CC27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 13:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mz/xW6P2ZNzVLQmIY53KnTG/xluxk9NEyZ9Jckl2ZQ0=; b=EZ471jG+rEndNE
	4Rnpuviw+suhkIhDX5HJZwQ8qrMMOqUoEcqlbsld3uxezCfINVFbYy4j7oPN+Mzpg4DS00uVfgGf2
	7bAToNB2rl7bABpEK1XnBzHHZsq581HhR6iEHLGL/GjrQZka+LYvYjROoBuG3q4wKuLudw4FLIN6B
	HidY4nOX3LSuaRtUouv6QF5LLfuDcq4Jggvfa8f3Mm9fHxT/+2A+NHvgvFnFB3d74C+uDIWbH0OqV
	Sg1vvTKAuQpDmu6Tu+Kh5G7dY80/LSxauZNDPvmibY5AqTg0eFA19aStDzWp+a8fLtY/ZTYVQljKk
	dxtsD0z+5fDC5BwfPVFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKHhR-000000059Ja-1360;
	Thu, 20 Jun 2024 13:19:37 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKHhM-000000059IK-1yFP
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Jun 2024 13:19:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1718889570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=AsRP5r0fpvpmEsH04gNv9kKaqCwtAkKfmqkVYvY6dLE=;
	b=V0+qvCb1rfAn2B4bglLa0k+cOgclGO6V/nQOVKIfSypvKjqXPbXp3BGHgoITQQT045NjQ4
	v1RCNApk+K7bMd+JLxGEZ55l207Dti3o3bWKUjed+GlqZ8JrzxODJDcfJTOBF0Ql6kD46s
	FFbxDumR9GxqKebWTpOu4GewhAoMcj8=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-212-x8szWCUROb2VD84vQ5kP-g-1; Thu, 20 Jun 2024 09:19:29 -0400
X-MC-Unique: x8szWCUROb2VD84vQ5kP-g-1
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6b50790e82bso3178876d6.2
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2024 06:19:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718889568; x=1719494368;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AsRP5r0fpvpmEsH04gNv9kKaqCwtAkKfmqkVYvY6dLE=;
        b=oiP6GFXwyv5tE+YSctwkFJC1Osk4ksyPOrWFckzHWyho55NynbYBSLQWYfNSLZ4xQm
         gAuq++tyMnOtkfUIS+c4r5wKEyQAPaPIwYGNse5aU4/RalJkHKh7k3I6BQFj606nj2KU
         0s4HHT5dljxpAgZIBDPRFA0yvjX6t7K4VkUPbF33iAbEBX/2DdZc+fdnmLvsgWrBauGY
         gcyKOqRSwQrUe9IB4cdi3k4N6LurIQx6c6KtUU+zrQWFOsOG5IOrvUKX84+qiYeYXGG7
         TN0za1T67PXZOhhyJGh813aJdU4qTwVjyeQmxrz9DSogxtAlZnKbFhnG06ZoaITUJd3a
         fX3A==
X-Forwarded-Encrypted: i=1; AJvYcCXTxXj59HlpaBLB1Zm2up6c8B+tZCYELw/h6JdaSILRZvDbIdUBVqN6hKz3jeF8vTunfcp9LGVYGXI6Ku/4RMYNvsRKIGcCoLn5Us5TKJkjcurB
X-Gm-Message-State: AOJu0Yw5+1nPVAlY/F/kwB1h9seH9v6eccRRHNxPn5uvsWBShSciXUWN
	Us2a8QECmf2qipH6gNWnCWDhwBM1kqaafQwjT+/7X4MbkkimjBXarxKmT0cjXxiWxF/8s4GHLJT
	T+sZ7yV1Hm0s+eazCY9OkyeVmLRcX017H50mCrPZHbK/WwsQbkjxksaR1LFgAmu1/IUKytlVNMU
	LDzA==
X-Received: by 2002:ad4:5dc6:0:b0:6b2:ae54:7c88 with SMTP id 6a1803df08f44-6b501e23be1mr56594626d6.2.1718889568425;
        Thu, 20 Jun 2024 06:19:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJiGXq7iC/KBqjz9TGNj1mG2OAhFM3Jo0oxe+pfu0GBa+zaF9kGf1NuOpnQDyqcPzmYgDJZw==
X-Received: by 2002:ad4:5dc6:0:b0:6b2:ae54:7c88 with SMTP id 6a1803df08f44-6b501e23be1mr56594336d6.2.1718889567978;
        Thu, 20 Jun 2024 06:19:27 -0700 (PDT)
Received: from gerbillo.redhat.com ([2a0d:3341:b0b7:b110::f71])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b5033f8a0esm19772146d6.134.2024.06.20.06.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 06:19:27 -0700 (PDT)
Message-ID: <7d208e8c8bb577cfc790fd24cf990684020ee7c5.camel@redhat.com>
Subject: Re: [PATCH v1 2/3] net: ethernet: arc: remove emac_arc driver
From: Paolo Abeni <pabeni@redhat.com>
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 robh@kernel.org,  krzk+dt@kernel.org, conor+dt@kernel.org,
 netdev@vger.kernel.org,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Thu, 20 Jun 2024 15:19:24 +0200
In-Reply-To: <10d8576f-a5da-4445-b841-98ceb338da0d@gmail.com>
References: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
	 <10d8576f-a5da-4445-b841-98ceb338da0d@gmail.com>
Autocrypt: addr=pabeni@redhat.com; prefer-encrypt=mutual; keydata=mQINBGISiDUBEAC5uMdJicjm3ZlWQJG4u2EU1EhWUSx8IZLUTmEE8zmjPJFSYDcjtfGcbzLPb63BvX7FADmTOkO7gwtDgm501XnQaZgBUnCOUT8qv5MkKsFH20h1XJyqjPeGM55YFAXc+a4WD0YyO5M0+KhDeRLoildeRna1ey944VlZ6Inf67zMYw9vfE5XozBtytFIrRyGEWkQwkjaYhr1cGM8ia24QQVQid3P7SPkR78kJmrT32sGk+TdR4YnZzBvVaojX4AroZrrAQVdOLQWR+w4w1mONfJvahNdjq73tKv51nIpu4SAC1Zmnm3x4u9r22mbMDr0uWqDqwhsvkanYmn4umDKc1ZkBnDIbbumd40x9CKgG6ogVlLYeJa9WyfVMOHDF6f0wRjFjxVoPO6p/ZDkuEa67KCpJnXNYipLJ3MYhdKWBZw0xc3LKiKc+nMfQlo76T/qHMDfRMaMhk+L8gWc3ZlRQFG0/Pd1pdQEiRuvfM5DUXDo/YOZLV0NfRFU9SmtIPhbdm9cV8Hf8mUwubihiJB/9zPvVq8xfiVbdT0sPzBtxW0fXwrbFxYAOFvT0UC2MjlIsukjmXOUJtdZqBE3v3Jf7VnjNVj9P58+MOx9iYo8jl3fNd7biyQWdPDfYk9ncK8km4skfZQIoUVqrWqGDJjHO1W9CQLAxkfOeHrmG29PK9tHIwARAQABtB9QYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+iQJSBBMBCAA8FiEEg1AjqC77wbdLX2LbKSR5jcyPE6QFAmISiDUCGwMFCwkIBwIDIgIBBhUKCQgLAgQWAgMBAh4HAheAAAoJECkkeY3MjxOkJSYQAJcc6MTsuFxYdYZkeWjW//zbD3ApRHzpNlHLVSuJqHr9/aDS+tyszgS8jj9MiqALzgq4iZbg
 7ZxN9ZsDL38qVIuFkSpgMZCiUHdxBC11J8nbBSLlpnc924UAyr5XrGA99 6Wl5I4Km3128GY6iAkH54pZpOmpoUyBjcxbJWHstzmvyiXrjA2sMzYjt3Xkqp0cJfIEekOi75wnNPofEEJg28XPcFrpkMUFFvB4Aqrdc2yyR8Y36rbw18sIX3dJdomIP3dL7LoJi9mfUKOnr86Z0xltgcLPGYoCiUZMlXyWgB2IPmmcMP2jLJrusICjZxLYJJLofEjznAJSUEwB/3rlvFrSYvkKkVmfnfro5XEr5nStVTECxfy7RTtltwih85LlZEHP8eJWMUDj3P4Q9CWNgz2pWr1t68QuPHWaA+PrXyasDlcRpRXHZCOcvsKhAaCOG8TzCrutOZ5NxdfXTe3f1jVIEab7lNgr+7HiNVS+UPRzmvBc73DAyToKQBn9kC4jh9HoWyYTepjdcxnio0crmara+/HEyRZDQeOzSexf85I4dwxcdPKXv0fmLtxrN57Ae82bHuRlfeTuDG3x3vl/Bjx4O7Lb+oN2BLTmgpYq7V1WJPUwikZg8M+nvDNcsOoWGbU417PbHHn3N7yS0lLGoCCWyrK1OY0QM4EVsL3TjOfUtCNQYW9sbyBBYmVuaSA8cGFvbG8uYWJlbmlAZ21haWwuY29tPokCUgQTAQgAPBYhBINQI6gu+8G3S19i2ykkeY3MjxOkBQJiEoitAhsDBQsJCAcCAyICAQYVCgkICwIEFgIDAQIeBwIXgAAKCRApJHmNzI8TpBzHD/45pUctaCnhee1vkQnmStAYvHmwrWwIEH1lzDMDCpJQHTUQOOJWDAZOFnE/67bxSS81Wie0OKW2jvg1ylmpBA0gPpnzIExQmfP72cQ1TBoeVColVT6Io35BINn+ymM7c0Bn8RvngSEpr3jBtqvvWXjvtnJ5/HbOVQCg62NC6ewosoKJPWpGXMJ9SKsVIOUHsmoWK60spzeiJoSmAwm3zTJQnM5kRh2q
 iWjoCy8L35zPqR5TV+f5WR5hTVCqmLHSgm1jxwKhPg9L+GfuE4d0SWd84y GeOB3sSxlhWsuTj1K6K3MO9srD9hr0puqjO9sAizd0BJP8ucf/AACfrgmzIqZXCfVS7jJ/M+0ic+j1Si3yY8wYPEi3dvbVC0zsoGj9n1R7B7L9c3g1pZ4L9ui428vnPiMnDN3jh9OsdaXeWLvSvTylYvw9q0DEXVQTv4/OkcoMrfEkfbXbtZ3PRlAiddSZA5BDEkkm6P9KA2YAuooi1OD9d4MW8LFAeEicvHG+TPO6jtKTacdXDRe611EfRwTjBs19HmabSUfFcumL6BlVyceIoSqXFe5jOfGpbBevTZtg4kTSHqymGb6ra6sKs+/9aJiONs5NXY7iacZ55qG3Ib1cpQTps9bQILnqpwL2VTaH9TPGWwMY3Nc2VEc08zsLrXnA/yZKqZ1YzSY9MGXWYLkCDQRiEog1ARAAyXMKL+x1lDvLZVQjSUIVlaWswc0nV5y2EzBdbdZZCP3ysGC+s+n7xtq0o1wOvSvaG9h5q7sYZs+AKbuUbeZPu0bPWKoO02i00yVoSgWnEqDbyNeiSW+vI+VdiXITV83lG6pS+pAoTZlRROkpb5xo0gQ5ZeYok8MrkEmJbsPjdoKUJDBFTwrRnaDOfb+Qx1D22PlAZpdKiNtwbNZWiwEQFm6mHkIVSTUe2zSemoqYX4QQRvbmuMyPIbwbdNWlItukjHsffuPivLF/XsI1gDV67S1cVnQbBgrpFDxN62USwewXkNl+ndwa+15wgJFyq4Sd+RSMTPDzDQPFovyDfA/jxN2SK1Lizam6o+LBmvhIxwZOfdYH8bdYCoSpqcKLJVG3qVcTwbhGJr3kpRcBRz39Ml6iZhJyI3pEoX3bJTlR5Pr1Kjpx13qGydSMos94CIYWAKhegI06aTdvvuiigBwjngo/Rk5S+iEGR5KmTqGyp27o6YxZy6D4NIc6PKUzhIUxfvuHNvfu
 sD2W1U7eyLdm/jCgticGDsRtweytsgCSYfbz0gdgUuL3EBYN3JLbAU+UZpy v/fyD4cHDWaizNy/KmOI6FFjvVh4LRCpGTGDVPHsQXaqvzUybaMb7HSfmBBzZqqfVbq9n5FqPjAgD2lJ0rkzb9XnVXHgr6bmMRlaTlBMAEQEAAYkCNgQYAQgAIBYhBINQI6gu+8G3S19i2ykkeY3MjxOkBQJiEog1AhsMAAoJECkkeY3MjxOkY1YQAKdGjHyIdOWSjM8DPLdGJaPgJdugHZowaoyCxffilMGXqc8axBtmYjUIoXurpl+f+a7S0tQhXjGUt09zKlNXxGcebL5TEPFqgJTHN/77ayLslMTtZVYHE2FiIxkvW48yDjZUlefmphGpfpoXe4nRBNto1mMB9Pb9vR47EjNBZCtWWbwJTIEUwHP2Z5fV9nMx9Zw2BhwrfnODnzI8xRWVqk7/5R+FJvl7s3nY4F+svKGD9QHYmxfd8Gx42PZc/qkeCjUORaOf1fsYyChTtJI4iNm6iWbD9HK5LTMzwl0n0lL7CEsBsCJ97i2swm1DQiY1ZJ95G2Nz5PjNRSiymIw9/neTvUT8VJJhzRl3Nb/EmO/qeahfiG7zTpqSn2dEl+AwbcwQrbAhTPzuHIcoLZYV0xDWzAibUnn7pSrQKja+b8kHD9WF+m7dPlRVY7soqEYXylyCOXr5516upH8vVBmqweCIxXSWqPAhQq8d3hB/Ww2A0H0PBTN1REVw8pRLNApEA7C2nX6RW0XmA53PIQvAP0EAakWsqHoKZ5WdpeOcH9iVlUQhRgemQSkhfNaP9LqR1XKujlTuUTpoyT3xwAzkmSxN1nABoutHEO/N87fpIbpbZaIdinF7b9srwUvDOKsywfs5HMiUZhLKoZzCcU/AEFjQsPTATACGsWf3JYPnWxL9
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_061932_670290_FC73B048 
X-CRM114-Status: GOOD (  11.59  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 2024-06-18 at 18:14 +0200, Johan Jonker wrote:
> The last real user nSIM_700 of the "snps,arc-emac" compatible string in
> a driver was removed in 2019. The use of this string in the combined DT of
> rk3066a/rk3188 as place holder has also been replaced, so
> remove emac_arc.c to clean up some code.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> [PATCH 8/8] ARC: nSIM_700: remove unused network options
> https://lore.kernel.org/all/20191023124417.5770-9-Eugeniy.Paltsev@synopsys.com/
> ---
>  drivers/net/ethernet/arc/Kconfig    | 10 ----
>  drivers/net/ethernet/arc/Makefile   |  1 -
>  drivers/net/ethernet/arc/emac_arc.c | 88 -----------------------------
>  3 files changed, 99 deletions(-)
>  delete mode 100644 drivers/net/ethernet/arc/emac_arc.c

AFAICS this depends on the previous DT patch, which in turn should go
via the arm tree.

Perhaps the whole series should go via the arm tree?

In such case:

Acked-by: Paolo Abeni <pabeni@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
